---
type: github-project
repo: "makecindy/cindy"
url: "https://github.com/makecindy/cindy"
first_seen: "2026-10-25"
last_seen: "2026-10-26"
trending_count: 2
github_rank: 1
stars_today: 675
total_stars: 4834
forks: 663
language: "TypeScript"
fetched_at: "2026-10-26T08:02:30+08:00"
documentation_checked_at: "2026-10-26"
stats_as_of: "2026-10-26"
snapshot_status: live
category: ["Desktop Agent", "Automation", "AI Assistant"]
topics: ["AI Agent", "Desktop", "Automation", "MCP"]
status: active
---
# makecindy/cindy

## 一句话说明
提供开源桌面与移动端 AI Agent 客户端，把 Claude Code、Codex、模型、记忆、Skills、MCP 和电脑操作整合到一个可直接使用的应用中。

## 它能做什么
- 在本地或云端运行多种 Agent，并组合模型、工具、记忆和 Skills。
- 操作浏览器、电脑与手机，处理真实文件和已登录应用中的任务。
- 支持 MCP、即时通信入口和定时自动化。
- 允许自带 API 或本地模型，并提供桌面端源码开发流程。

## 怎么利用
普通用户可下载安装 Cindy，在本地模式选择 Skip Sign-In 后连接本地 Agent；需要托管能力时再登录云账户。输入是自然语言任务、获准访问的文件/应用和模型配置，Cindy 调用相应 Agent 与工具完成步骤，输出修改后的文件、浏览器操作结果或定时任务状态。

## 实际例子
**官方能力对应场景 → 场景：** 在一个客户端里让 Codex 整理本地项目并通过浏览器核对结果。**输入：** 项目文件夹、明确的整理要求和授权浏览器页面。**操作：** 以本地模式启动 Cindy，选择 Codex，限定可访问目录并运行任务。**输出：** 本地文件修改和浏览器核对结果；执行写操作前可由用户审查。

开发者从源码运行桌面端的官方命令：

```bash
git lfs pull
pnpm install
pnpm restart:desktop:remote --region=cn
```

## 适合谁
希望在桌面端统一使用多个 Coding Agent、MCP 和电脑自动化的个人用户，以及需要研究或二次开发 Agent 客户端的 TypeScript 团队。

## 局限 / 注意点
- 本地 Skip Sign-In 模式不包含服务器端功能；云端功能依赖账户和独立后端，本仓库只包含客户端。
- Agent 可接触真实文件和已登录应用，应按最小权限授权并复核外部操作。源码开发要求 Node.js 22、pnpm 10 和 Git LFS；官方构建包含 TapDB 元数据统计，源码构建可关闭。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-25 | 10 | 477 | 4086 | 584 | GitHub Today live snapshot |
| 2026-10-26 | 1 | 675 | 4834 | 663 | GitHub Today live snapshot |

## 相关主题
[[Topics/AI-Agent|AI-Agent]] · [[Topics/Desktop|Desktop]] · [[Topics/Automation|Automation]] · [[Topics/MCP|MCP]]

## 相关日报
- [[Daily/2026/10/2026-10-25|2026-10-25]]
- [[Daily/2026/10/2026-10-26|2026-10-26]]

## GitHub 原始链接
https://github.com/makecindy/cindy

## 官方资料复核（2026-10-26）
- README：https://github.com/makecindy/cindy/blob/main/README.md
- 中文 README blob SHA：`4f1caabe7fe42cda7ea6f58e3c5e412221044dc1`
- 默认 README blob SHA：`8af0739d87f29cd820be10698003cf9525647a74`

