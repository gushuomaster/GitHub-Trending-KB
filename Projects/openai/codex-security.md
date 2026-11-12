---
type: github-project
repo: "openai/codex-security"
url: "https://github.com/openai/codex-security"
first_seen: "2026-11-12"
last_seen: "2026-11-12"
trending_count: 1
language: "TypeScript"
total_stars: 11697
forks: 937
stars_today: 52
github_rank: 9
fetched_at: "2026-11-12T08:08:27+08:00"
documentation_checked_at: "2026-11-12"
stats_as_of: "2026-11-12"
snapshot_status: "live"
category: ["Security","Static Analysis","Developer Tools"]
topics: ["Security","Code-Analysis","CI"]
---
# openai/codex-security

## 一句话说明
Codex Security 提供 CLI、TypeScript SDK 和 Codex 工作流，用于在代码库中发现、验证、修复并持续跟踪安全漏洞。

## 它能做什么
- 扫描完整仓库、指定路径或 Git diff，并用 Standard/Deep 模式调查和去重发现。
- 验证候选漏洞、生成补丁、复核现有修复，并保存报告与威胁模型。
- 通过 CLI、TypeScript SDK、GitHub Actions 和容器把扫描接入本地或 CI。
- 把结果导出为 SARIF、JSON、CSV，或同步到支持的 Issue 与 Cloud 工作流。

## 怎么利用
在目标仓库安装并登录 CLI，运行 `cs scan .`。输入是代码库及可选扫描范围；工具调查、验证并去重候选问题，保存 Markdown 报告与 findings；用户据源码证据和覆盖限制决定修复、导出或持续跟踪。

## 实际例子
**官方 Quickstart →** 在仓库执行 `cs scan . --path src --path tests`；扫描完成后打开终端显示的 `REPORT`，得到源代码证据、严重性、排除范围和后续修复入口。

## 关键命令
```bash
npm install --global @openai/codex-security
cs login
cs scan .
```

## 适合谁
需要对应用代码做可复核漏洞调查、在 CI 输出 SARIF，或批量维护安全发现的安全工程师和开发团队。

## 局限 / 注意点
CLI 要求 Node.js 22.13+（22.x）或 24/26，以及 Python 3.10+；自动化扫描需要 OpenAI/Codex API 凭据并可能产生费用。部分受保护的安全请求还要求 Trusted Access for Cyber。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-12 | 9 | 52 | 11697 | 937 | GitHub Today live snapshot |

## 相关主题
[[Topics/Security|Security]] · [[Topics/Code-Analysis|Code-Analysis]] · [[Topics/CI|CI]]

## 相关日报
- [[Daily/2026/11/2026-11-12|2026-11-12]]

## GitHub 原始链接
https://github.com/openai/codex-security

## 官方资料复核（2026-11-12）
- README：https://github.com/openai/codex-security/blob/HEAD/README.md
- README blob SHA：`c30adfcdb1b8c61c6051d14f6fad8fe1ea90d81a`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
