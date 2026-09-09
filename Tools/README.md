# Windows 自动同步 Obsidian Vault

默认 Vault：`D:\GitHub-Trending-KB`

默认行为：

- Windows 登录后同步一次
- 之后每 30 分钟同步一次
- 使用 `git fetch` + `git merge --ff-only`
- 不强制覆盖本地修改
- 日志保存在 `.sync-logs\git-pull.log`

## 安装

先把仓库同步到本地：

```powershell
cd D:\GitHub-Trending-KB
git pull
```

然后安装计划任务：

```powershell
powershell -ExecutionPolicy Bypass -File "D:\GitHub-Trending-KB\Tools\install_obsidian_git_pull_task.ps1"
```

如果想改成每 10 分钟：

```powershell
powershell -ExecutionPolicy Bypass -File "D:\GitHub-Trending-KB\Tools\install_obsidian_git_pull_task.ps1" -EveryMinutes 10
```

如果 Vault 不在 D 盘：

```powershell
powershell -ExecutionPolicy Bypass -File ".\Tools\install_obsidian_git_pull_task.ps1" -VaultPath "E:\Obsidian\GitHub-Trending-KB"
```

## 手动测试

```powershell
powershell -ExecutionPolicy Bypass -File "D:\GitHub-Trending-KB\Tools\obsidian_git_pull.ps1"
```

## 删除计划任务

```powershell
powershell -ExecutionPolicy Bypass -File "D:\GitHub-Trending-KB\Tools\uninstall_obsidian_git_pull_task.ps1"
```

## 私有仓库认证

计划任务以当前 Windows 用户运行，通常会复用 Git Credential Manager 已保存的 GitHub 登录状态。如果日志提示认证失败，先在 PowerShell 中手动执行一次 `git pull` 并完成 GitHub 登录。
