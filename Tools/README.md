# Windows 自动同步 Obsidian Vault

Vault 默认位于 `D:\GitHub-Trending-KB`，GitHub `origin/main` 是唯一真源。

- 登录 Windows 时和登录后的每 30 分钟同步一次。
- 使用 `git fetch origin main` 和 `git reset --hard origin/main`。
- 不等待某个固定日期的日报；只要云端有新提交，本地就会获取。
- 本地已跟踪文件的修改会被覆盖；未跟踪文件不会被删除。
- 日志：`%LOCALAPPDATA%\GitHub-Trending-KB\sync.log`。

## 安装或修复

仓库文件已更新到本地后，在 PowerShell 中运行：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "D:\GitHub-Trending-KB\Tools\install_obsidian_git_pull_task.ps1"
```

安装器会安装稳定副本、移除历史任务、建立 `GitHub-Trending-KB Local Sync` 任务，并立即同步一次。可传入 `-VaultPath` 和 `-EveryMinutes`，最小间隔为 5 分钟。

## 手动同步

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "D:\GitHub-Trending-KB\Tools\obsidian_git_pull.ps1"
```

计划任务以当前 Windows 用户身份运行，并复用该用户保存的 GitHub Git 凭据。若 `git fetch` 返回认证错误，需在该用户会话内完成一次 GitHub Git 登录。
