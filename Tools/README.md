# Windows 自动同步 Obsidian Vault

Vault 默认位于此前识别出的 `D:\gs\GitHub-Trending-KB`，GitHub `origin/main` 是唯一真源。若你移动了 Vault，安装时传入 `-VaultPath`。

- 登录 Windows 时和登录后的每 30 分钟同步一次。
- 使用 `git fetch origin main` 和 `git reset --hard origin/main`。
- 不等待某个固定日期的日报；只要云端有新提交，本地就会获取。
- 本地已跟踪文件的修改会被覆盖；未跟踪文件不会被删除。
- 日志：`%LOCALAPPDATA%\GitHub-Trending-KB\sync.log`。

## 安装或修复

仓库文件已更新到本地后，在 PowerShell 中运行：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "D:\gs\GitHub-Trending-KB\Tools\install_obsidian_git_pull_task.ps1"
```

安装器会先执行即时同步；成功后才建立 `GitHub-Trending-KB Local Sync` 任务并移除历史任务。可传入 `-VaultPath` 和 `-EveryMinutes`，最小间隔为 5 分钟。

## 手动同步

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "D:\gs\GitHub-Trending-KB\Tools\obsidian_git_pull.ps1"
```

计划任务以当前 Windows 用户身份运行，并复用该用户保存的 GitHub Git 凭据。若 `git fetch` 返回认证错误，需在该用户会话内完成一次 GitHub Git 登录。

若 Git 遗留的 `127.0.0.1` 代理端口失效，脚本会依次尝试 Windows 当前系统代理、Clash/mihomo 进程正在监听的本地端口，以及不显式设置 Git 代理（可用于 Clash TUN 模式）。某个代理实际连接成功后才更新本仓库 `origin` 的代理配置。不会修改全局 Git 代理；若均失败，需先恢复 Clash 的代理服务或网络连接。
