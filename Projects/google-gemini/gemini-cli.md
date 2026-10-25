---
type: github-project
repo: "google-gemini/gemini-cli"
url: "https://github.com/google-gemini/gemini-cli"
first_seen: "2026-10-25"
last_seen: "2026-10-25"
trending_count: 1
github_rank: 8
stars_today: 44
total_stars: 108044
forks: 14807
language: "TypeScript"
fetched_at: "2026-10-25T08:11:52+08:00"
documentation_checked_at: "2026-10-25"
stats_as_of: "2026-10-25"
snapshot_status: live
category: ["Coding Agent", "CLI", "Gemini"]
topics: ["Gemini", "Coding Agent", "CLI", "MCP"]
status: active
---
# google-gemini/gemini-cli

## 一句话说明
把 Gemini 作为开源终端 Agent，用自然语言理解和修改代码库、生成应用，并把重复工程任务编排成脚本。

## 它能做什么
- 在终端中解释、检索和编辑大型代码库。
- 根据文本或多模态输入生成应用和开发材料。
- 自动执行 Git、构建和其他命令行工作流，并支持非交互 JSON 输出。
- 通过 MCP 扩展外部工具和数据源。

## 怎么利用
用 `npx` 启动 Gemini CLI，在目标仓库中认证后运行 `gemini` 进入交互模式，或用 `-p` 把固定任务放进 CI/脚本。输入是代码目录、提示词以及明确授权的工具，Agent 会读取上下文、提出或执行修改，输出代码差异、命令结果或机器可读 JSON。

## 实际例子
**官方命令对应场景 → 场景：** 在接手新仓库时自动生成架构摘要。**输入：** 本地代码目录。**操作：** 在仓库根目录执行非交互命令并要求解释架构。**输出：** 可被后续脚本解析的 JSON 架构说明，不必手工逐文件阅读。

```bash
npx @google/gemini-cli
gemini -p "Explain the architecture of this codebase" --output-format json
```

## 适合谁
需要在终端进行代码理解、批量修改或把 AI 编程任务接入脚本和 CI 的开发者与维护团队。

## 局限 / 注意点
- 需要配置受支持的 Google 登录或 API 凭据，并受模型配额和服务可用性约束；允许执行命令、改文件或调用 MCP 前应审查权限。
- README 明确提示部分非付费/Google One 用户已转向 Antigravity，且 Gemini CLI 未针对 Gemini 4 Argon 优化；当前产品路径和模型兼容性应以官方说明为准。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-25 | 8 | 44 | 108044 | 14807 | GitHub Today live snapshot |

## 相关主题
[[Topics/Gemini|Gemini]] · [[Topics/Coding-Agent|Coding-Agent]] · [[Topics/CLI|CLI]] · [[Topics/MCP|MCP]]

## 相关日报
- [[Daily/2026/10/2026-10-25|2026-10-25]]

## GitHub 原始链接
https://github.com/google-gemini/gemini-cli

## 官方资料复核（2026-10-25）
- README：https://github.com/google-gemini/gemini-cli/blob/main/README.md
- README blob SHA：`97c6ce91bb25d217fa1a096e5ddc97a8190084dc`

