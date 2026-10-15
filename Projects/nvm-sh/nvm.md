---
type: github-project
repo: nvm-sh/nvm
url: https://github.com/nvm-sh/nvm
first_seen: '2026-10-15'
last_seen: '2026-10-15'
trending_count: 1
language: Shell
total_stars: 95446
forks: 10517
stars_today: 52
github_rank: 4
fetched_at: '2026-10-15T08:02:04+08:00'
category: [Node.js, Developer-Tools, Version-Management]
topics: [Node.js, Developer-Tools]
documentation_checked_at: '2026-10-15'
stats_as_of: '2026-10-15'
---

# nvm-sh/nvm

## 一句话说明
在同一用户和 Shell 中安装、切换并运行多个 Node.js 版本，避免不同项目互相覆盖运行环境。

## 它能做什么
- 安装、列出、卸载和切换任意可用 Node.js 版本。
- 用别名或 `.nvmrc` 固定项目版本，并在新 Shell 中自动选择。
- 用 `nvm run`、`nvm exec` 在指定 Node 版本下执行脚本。
- 在升级 Node 时迁移已有全局 npm 包。

## 怎么利用
在 POSIX Shell 安装 nvm，然后为每个项目写入所需 Node 主版本。进入目录后执行 `nvm use`，输入是版本号或 `.nvmrc`，nvm 调整当前 Shell 的 PATH，输出是隔离于其他项目的 Node/npm 运行环境。

## 实际例子
**官方命令工作流 → 场景：** 新服务需要 Node 24，旧脚本仍要求 Node 22。**输入：** 两个版本号。**操作：** 安装并切换到 24 开发新服务，需验证旧脚本时用 `nvm exec 22`。**输出：** 两套项目分别在兼容版本中运行，而不覆盖系统 Node。

## 关键命令
```sh
nvm install 24
nvm use 24
nvm exec 22 node --version
```

## 适合谁
同时维护多个 Node.js 项目、需要复现 CI 版本或测试跨版本兼容性的前端、后端与工具链开发者。

## 局限 / 注意点
nvm 面向 POSIX 兼容 Shell；原生 Windows 不受支持，Windows 用户通常通过 WSL 使用。它按用户和 Shell 修改环境，新终端需加载初始化脚本；下载二进制或从源码编译会消耗时间和磁盘。

## Trending 历史
- 2026-10-15：#4 · Stars Today：52 · Total Stars：95446 · Forks：10517

## 相关主题
[[Topics/Node.js|Node.js]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/10/2026-10-15|2026-10-15]]

## GitHub 原始链接
https://github.com/nvm-sh/nvm

## 官方资料核对（2026-10-15）
- README：https://github.com/nvm-sh/nvm/blob/master/README.md

