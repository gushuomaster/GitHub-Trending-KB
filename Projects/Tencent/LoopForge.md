---
type: github-project
repo: "Tencent/LoopForge"
url: "https://github.com/Tencent/LoopForge"
first_seen: "2026-11-15"
last_seen: "2026-11-15"
trending_count: 1
language: "Go"
total_stars: 894
forks: 211
stars_today: 33
github_rank: 13
fetched_at: "2026-11-15T08:07:59+08:00"
documentation_checked_at: "2026-11-15"
stats_as_of: "2026-11-15"
snapshot_status: "live"
category: ["Coding Agent","Workflow","Self-Hosted"]
topics: ["Coding-Agent","SOP","Self-Hosted"]
---
# Tencent/LoopForge

## 一句话说明
LoopForge 是可自主部署的 Coding Agent 团队工作台，用 Docker 沙箱、角色分工、SOP 和人工关口把一次性 Agent 操作变成可追踪的软件交付流程。

## 它能做什么
- Main Bot 可从对话创建带仓库的沙箱工作区，调用项目角色并提交 PR/MR。
- SOP 按顺序组合 Agent、脚本、人工审批和子 SOP 节点，支持暂停、返工、重试和续跑。
- 兼容 CodeBuddy、Codex、Claude Code、OpenCode、Cursor CLI 等多种执行器。
- 统一记录需求、节点状态、工具轨迹、日志、产物和成本，便于复核交付过程。

## 怎么利用
克隆仓库后运行 `./start.sh`，打开安装器给出的地址；先运行无需 API Key 的“Platform check · script & approval”模板，脚本生成报告后在人工关口批准，最终得到可追踪产物。

## 实际例子
**官方 Quickstart →** 克隆仓库后运行 `./start.sh`，打开安装器给出的地址；先运行无需 API Key 的“Platform check · script & approval”模板，脚本生成报告后在人工关口批准，最终得到可追踪产物。

## 关键命令
```bash
git clone https://github.com/Tencent/LoopForge.git
cd LoopForge
./start.sh
```

## 适合谁
希望在自有基础设施中组织多个 Coding Agent、固化研发 SOP，并把测试、评审和人工批准放进交付流程的研发团队。

## 局限 / 注意点
完整代码交付仍需要模型凭据和代码托管授权；服务默认监听 `0.0.0.0:8090`，管理员账号建立前应限制来源 IP或配置 HTTPS。Docker 沙箱降低但不消除凭据泄露、恶意仓库和 Agent 越权风险。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-15 | 13 | 33 | 894 | 211 | GitHub Today live snapshot |

## 相关主题
[[Topics/Coding-Agent|Coding-Agent]] · [[Topics/SOP|SOP]] · [[Topics/Self-Hosted|Self-Hosted]]

## 相关日报
- [[Daily/2026/11/2026-11-15|2026-11-15]]

## GitHub 原始链接
https://github.com/Tencent/LoopForge

## 官方资料复核（2026-11-15）
- README：https://github.com/Tencent/LoopForge/blob/HEAD/README.md
- README blob SHA：`8141eec354b8852ef67a908ef2547232a2e4bf9d`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
