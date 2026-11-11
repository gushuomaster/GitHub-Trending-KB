# Windows 自动同步 Obsidian Vault

Vault 默认位于 `D:\gs\GitHub-Trending-KB`，是 GitHub `origin/main` 的**只读镜像**：GitHub 是唯一真源，本地只负责被 Obsidian 读取并刷新索引和图谱。若你移动了 Vault，安装时传入 `-VaultPath`。

## 运行契约

- Windows 计划任务**每小时**运行一次独立的同步进程；错过的运行（睡眠、关机、崩溃）在系统可用后补跑。安装时也会立即同步一次。云端每天约 08:15 推送日报、约 14:30 推送审计修正，都会在一小时内到达本地。
- 每次运行最多尝试 3 次，失败后等待 5 分钟再试，任一尝试成功即停止。配置类错误（不是 Git 仓库、`origin` 指向别处）不重试。
- 同步方式：`git fetch origin main`，然后把本地镜像到 `origin/main`。
- **本地独有的状态不会阻塞同步**，先备份、再以远端为准覆盖：
  - 未推送的本地提交、分离 HEAD 或其他分支：保存为 `refs/sync-backup/<时间>/head`，并导出 `unpushed-commits.patch`。
  - 已跟踪文件的修改（含暂存区）：保存为 `refs/sync-backup/<时间>/worktree`，并导出 `tracked-changes.patch`。
  - 会被远端新文件覆盖的未跟踪文件：复制到备份目录的 `untracked\` 下。
  - 备份目录：`%LOCALAPPDATA%\GitHub-Trending-KB\backups\<时间>\`，里面的 `README.txt` 记录了当时的状态。
- 与远端无关的未跟踪文件（`.obsidian/`、自建笔记等）不会被删除。只有行尾差异的改动直接丢弃，不备份。
- 崩溃遗留的、超过 10 分钟的 Git `*.lock` 文件，以及中断的 rebase/cherry-pick 状态会被自动清理。
- 发生覆盖时弹出 Windows 通知；同步最终失败时也会通知，同一段连续失败期间 12 小时内最多提醒一次。
- 日志：`%LOCALAPPDATA%\GitHub-Trending-KB\sync.log`，只记录变化和失败，超过 1MB 时轮转为 `sync.log.1`。最近一次运行的结果在 `status.json` 里（`result`、`head`、`time`）。

## 不要在 Vault 里开发

这个目录会被自动覆盖。修改 `Tools/` 或任何内容，请在**另一个克隆**里完成并推送到 GitHub，再在本 Vault 运行安装器更新本地任务。2026-11-10 起的同步中断，就是因为有人在 Vault 里提交了未推送的修改，导致本地与远端分叉、而旧脚本只能快进。

## 安装或修复

仓库文件已更新到本地后，在 PowerShell 中运行：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "D:\gs\GitHub-Trending-KB\Tools\install_obsidian_git_pull_task.ps1"
```

安装器会备份现有任务和已安装脚本，把脚本复制到 `%LOCALAPPDATA%\GitHub-Trending-KB\`，注册 `GitHub-Trending-KB Local Sync` 每小时任务，校验注册结果后执行一次即时同步。任务注册失败时恢复旧配置；即时同步失败时每小时任务仍会保留。可传入 `-VaultPath` 和 `-IntervalMinutes`（15–720）。

不使用登录触发器：普通用户注册 `AtLogOn` 会被拒绝访问（见 `sync-failure-analysis-2026-10-28.md`）。每小时重复加上 `StartWhenAvailable` 已经能覆盖开机和唤醒的场景。

自动同步只有一个负责方：Windows 任务调用独立脚本。Obsidian Git 插件的自动 pull、自动提交和自动 push 应保持关闭，插件只用于查看状态。

如需停用，运行 `Tools/uninstall_obsidian_git_pull_task.ps1`。

查看任务和最近一次运行结果：

```powershell
Get-ScheduledTaskInfo -TaskName 'GitHub-Trending-KB Local Sync'
Get-Content -LiteralPath "$env:LOCALAPPDATA\GitHub-Trending-KB\status.json" -Encoding UTF8
Get-Content -LiteralPath "$env:LOCALAPPDATA\GitHub-Trending-KB\sync.log" -Encoding UTF8 -Tail 20
```

注意：系统在任务运行中途异常关机时，`LastTaskResult` 可能仍显示 0。请以 `status.json` 为准。

## 手动同步

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "D:\gs\GitHub-Trending-KB\Tools\obsidian_git_pull.ps1"
```

## 找回被覆盖的本地内容

```powershell
git -C "D:\gs\GitHub-Trending-KB" for-each-ref refs/sync-backup/
git -C "D:\gs\GitHub-Trending-KB" show refs/sync-backup/<时间>/worktree    # 查看当时的修改
```

也可以直接打开备份目录里的 `.patch` 文件和 `untracked\` 副本。

## 网络

计划任务以当前 Windows 用户身份运行，复用该用户保存的 GitHub Git 凭据。

若 Git 遗留的 `127.0.0.1` 代理端口失效，脚本会依次尝试：Windows 当前系统代理、Clash/mihomo 进程正在监听的本地端口、不显式设置 Git 代理（适用于 Clash TUN 模式）。某个代理实际连接成功后，才会更新本仓库 `origin` 的代理配置。Git for Windows 的 Schannel 握手失败时，代理重试改用 OpenSSL；验证成功后只在本仓库保存该 TLS 后端，不改全局设置。开机或唤醒后代理还没起来时，本次运行可能失败，下一小时的运行会补上。

## 编码

脚本里含中文，必须保存为 **UTF-8 with BOM**。Windows PowerShell 5.1 会把不带 BOM 的文件按 ANSI 读取，导致整个脚本解析失败。测试会检查这一点。

## 历史故障

- 2026-10：登录常驻循环退出后无人监督；`*.jsonl` 换行属性造成内容没变却显示"已修改"的脏文件；Git 的 stderr 警告被当成失败。详见 `sync-failure-analysis-2026-10-28.md`。
- 2026-11-10 至 11-11：Vault 内有未推送的本地提交，本地与远端分叉，旧脚本只做 `merge --ff-only`，于是永久失败。同期每天只触发一次，11-11 09:31 系统异常重启打断了当天唯一的一次运行。现已改为镜像覆盖（先备份）加每小时触发。

回归测试：`Tools/tests/obsidian_git_pull.Tests.ps1`（包含基于本地裸仓库的端到端镜像场景）和 `Tools/tests/install_obsidian_git_pull_task.Tests.ps1`。
