# Windows 自动同步 Obsidian Vault

Vault 默认位于此前识别出的 `D:\gs\GitHub-Trending-KB`，GitHub `origin/main` 是唯一真源。若你移动了 Vault，安装时传入 `-VaultPath`。

- 由 Windows 计划任务每天 09:30 运行一次独立的同步进程；错过的运行在系统可用后补跑。安装时也会立即同步一次。
- 每次运行由脚本完成最多 3 次同步尝试；失败后等待 10 分钟再试，任一尝试成功即停止。Windows 任务只负责每日触发，不承担业务重试。
- 使用 `git fetch origin main` 和 `git merge --ff-only origin/main`；只有本地已跟踪文件没有实质修改时才更新。
- 不等待某个固定日期的日报；09:30 前云端已有的新提交会被获取。三次均失败时保留日志和本地内容，等待手动同步或第二天任务。
- 未跟踪文件不会被删除；有暂存或实质修改的已跟踪文件时会停止并记日志。
- 日志：`%LOCALAPPDATA%\GitHub-Trending-KB\sync.log`。旧版 `loop.log` 仅供追溯历史故障。

## 安装或修复

仓库文件已更新到本地后，在 PowerShell 中运行：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "D:\gs\GitHub-Trending-KB\Tools\install_obsidian_git_pull_task.ps1"
```

安装器会备份现有任务和已安装脚本，建立 `GitHub-Trending-KB Local Sync` 每日任务，再执行即时同步。任务注册失败时恢复旧配置；即时同步失败时每日任务仍会保留。可传入 `-VaultPath` 和 `-DailyAt HH:mm`。

自动同步只有一个负责人：Windows 任务调用独立脚本。Obsidian 负责读取本地 Markdown 并刷新索引/图谱；Obsidian Git 插件的自动 pull、自动提交和自动 push 应保持关闭，只用于状态查看和手动操作。

如需停用，运行 `Tools/uninstall_obsidian_git_pull_task.ps1`；其默认目标就是上述计划任务。

查看任务和最近一次运行结果：

```powershell
Get-ScheduledTask -TaskName 'GitHub-Trending-KB Local Sync'
Get-ScheduledTaskInfo -TaskName 'GitHub-Trending-KB Local Sync'
Get-Content -LiteralPath "$env:LOCALAPPDATA\GitHub-Trending-KB\sync.log" -Encoding UTF8 -Tail 20
```

## 手动同步

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "D:\gs\GitHub-Trending-KB\Tools\obsidian_git_pull.ps1"
```

计划任务以当前 Windows 用户身份运行，并复用该用户保存的 GitHub Git 凭据。若 `git fetch` 返回认证错误，需在该用户会话内完成一次 GitHub Git 登录。

若 Git 遗留的 `127.0.0.1` 代理端口失效，脚本会依次尝试 Windows 当前系统代理、Clash/mihomo 进程正在监听的本地端口，以及不显式设置 Git 代理（可用于 Clash TUN 模式）。某个代理实际连接成功后才更新本仓库 `origin` 的代理配置。Git for Windows 的 Schannel 握手失败时，代理重试使用 OpenSSL；验证成功后只在本仓库保存该 TLS 后端，不修改全局设置。若均失败，需检查日志并恢复代理服务或网络连接。

此前反复故障的根因包括：旧登录常驻循环退出后没有监督机制；`*.jsonl` 换行属性造成无内容变化的“脏文件”；以及电脑从睡眠恢复时同步早于代理启动，而 Windows 外层失败重启没有实际发生。现在 JSONL 保留原始字节，Git 命令以退出码判断，脚本自身负责有限重试。回归测试位于 `Tools/tests/obsidian_git_pull.Tests.ps1`。
