---
type: github-project
repo: "elementalsouls/Claude-BugHunter"
url: "https://github.com/elementalsouls/Claude-BugHunter"
first_seen: "2026-11-16"
last_seen: "2026-11-28"
trending_count: 11
language: "Python"
total_stars: 26053
forks: 2682
stars_today: 1608
github_rank: 1
fetched_at: "2026-11-28T08:07:15+08:00"
documentation_checked_at: "2026-11-28"
stats_as_of: "2026-11-28"
snapshot_status: "live"
category: ["Security", "Agent Skills", "Red Team"]
topics: ["Security", "Agent-Skills", "Red-Team"]
---
# elementalsouls/Claude-BugHunter

## 一句话说明
Claude-BugHunter 是面向已授权漏洞挖掘和外部红队工作的 Agent Skills 套件，把方法论、漏洞类别知识、验证门和报告流程装入 Claude Code 等 Agent。

## 它能做什么
- 当前 README 汇集 85 个技能、16 个斜杠命令和来自 681 份公开报告的模式，其中 433 个模式已有逐项引用与审计证据，覆盖 24 类核心漏洞。
- 用 Think、Web 应用 Hunting、企业边界与交付四层组织侦察、验证、严重度判断和证据整理。
- 支持 Claude Code、Codex CLI、OpenCode、Hermes 与 Antigravity，并可选接入 Burp MCP。
- 提供 engagement 文件夹脚手架、`cbh scope import`、确定性证据捕获、可选的跨任务记忆与只保存通用计数的攻击指标。

## 怎么利用
**官方授权测试流程 →** 在 Claude Code 安装插件后，描述一个明确在范围内的目标并要求执行 recon；相关技能自动加载，按方法论枚举攻击面、验证发现、通过 7-Question Gate，最后输出带证据与严重度映射的报告草稿。

## 实际例子
**官方授权测试流程 →** 在 Claude Code 安装插件后，描述一个明确在范围内的目标并要求执行 recon；相关技能自动加载，按方法论枚举攻击面、验证发现、通过 7-Question Gate，最后输出带证据与严重度映射的报告草稿。

## 关键命令
```bash
/plugin marketplace add elementalsouls/Claude-BugHunter
/plugin install claude-bughunter@elementalsouls
```

## 适合谁
有明确授权范围、需要把漏洞研究方法、验证、证据和报告标准化的 Bug Bounty 研究员、渗透测试员与红队成员。

## 局限 / 注意点
只能用于自有资产、书面授权的渗透测试、漏洞奖励范围或训练环境；项目不覆盖二进制利用、内核 pwn 和浏览器内部攻击，也不提供未授权批量攻击或恶意软件能力。默认运行不会跨 engagement 保存目标标识数据，但显式启用 `--use-memory` 后会写入本地 ledger，仍需按敏感测试资料保护。模型平台自身的网络安全防护仍可能拒绝部分操作；官方 README 还说明 Claude Opus 5 对 exploit generation、二进制漏洞扫描和渗透测试等较高风险请求可能自动切换到 Opus 4.8，这与技能本身无关，授权工作需留意会话中的模型切换提示或按平台设置处理。内容与代码还采用不同许可证，复用时需核对署名要求。

## Trending 历史


| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-16 | 9 | 98 | 6417 | 967 | GitHub Today live snapshot |
| 2026-11-18 | 1 | 1005 | 9228 | 1357 | GitHub Today live snapshot |
| 2026-11-20 | 1 | 1349 | 12494 | 1588 | GitHub Today live snapshot |
| 2026-11-21 | 1 | 1622 | 14221 | 1697 | GitHub Today live snapshot |
| 2026-11-22 | 1 | 1803 | 16023 | 1827 | GitHub Today live snapshot |
| 2026-11-23 | 1 | 1716 | 17762 | 1965 | GitHub Today live snapshot |
| 2026-11-24 | 1 | 2029 | 19724 | 2096 | GitHub Today live snapshot |
| 2026-11-25 | 1 | 1826 | 21439 | 2229 | GitHub Today live snapshot |
| 2026-11-26 | 1 | 1,652 | 22,968 | 2,348 | GitHub Today live snapshot |
| 2026-11-27 | 1 | 1,597 | 24,551 | 2,501 | GitHub Today live snapshot |

| 2026-11-28 | 1 | 1608 | 26053 | 2682 | 仓库实时快照（GitHub Trending Any / Any / Today；采集时间 2026-11-28T08:07:15+08:00） |

## 相关主题
[[Topics/Security|Security]] · [[Topics/Agent-Skills|Agent-Skills]] · [[Topics/Red-Team|Red-Team]]

## 相关日报



- [[Daily/2026/11/2026-11-16|2026-11-16]]
- [[Daily/2026/11/2026-11-18|2026-11-18]]

- [[Daily/2026/11/2026-11-20|2026-11-20]]
- [[Daily/2026/11/2026-11-21|2026-11-21]]
- [[Daily/2026/11/2026-11-22|2026-11-22]]
- [[Daily/2026/11/2026-11-23|2026-11-23]]
- [[Daily/2026/11/2026-11-24|2026-11-24]]
- [[Daily/2026/11/2026-11-25|2026-11-25]]
- [[Daily/2026/11/2026-11-26|2026-11-26]]
- [[Daily/2026/11/2026-11-27|2026-11-27]]

- [[Daily/2026/11/2026-11-28|2026-11-28]]

## GitHub 原始链接
https://github.com/elementalsouls/Claude-BugHunter

## 官方资料复核（2026-11-16）
- README：https://github.com/elementalsouls/Claude-BugHunter/blob/HEAD/README.md
- README blob SHA：`cd07caf4e92730b808891539a9397f1489f039d6`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

## 官方资料复核（2026-11-18）
- README：https://github.com/elementalsouls/Claude-BugHunter/blob/HEAD/README.md
- README blob SHA：`cd07caf4e92730b808891539a9397f1489f039d6`
- 本次按当前官方 README 复核并合并当天榜单事实；保留既有说明、案例、分类、主题、风险与较早历史。

## 官方资料复核（2026-11-20）
- README：https://github.com/elementalsouls/Claude-BugHunter/blob/HEAD/README.md
- README blob SHA：`cd07caf4e92730b808891539a9397f1489f039d6`
- 本次按当前官方 README 复核并合并当天榜单事实；保留既有说明、案例、分类、主题、风险与较早历史。

## 最近变化
- 资料核对（2026-11-21）：重新读取当前官方 README；README blob SHA：`cd07caf4e92730b808891539a9397f1489f039d6`。
- 资料核对（2026-11-24）：README 已增至 84 个技能；补入 `exploit-completion`、`cbh scope import`、确定性证据捕获，以及默认不跨 engagement 保存目标标识数据的边界。README blob SHA：`1ce4a56268c3b5bc505dfd42d86cbbafc68e2800`。
- 资料核对（2026-11-25）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`1ce4a56268c3b5bc505dfd42d86cbbafc68e2800`。
- 资料核对（2026-11-26）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`f5c32600baa3e9f56cd4a8bae45d01b8d8978c96`。
- 资料核对（2026-11-27）：午后 README 新增 Opus 5 在部分较高风险网络安全请求中自动切换到 Opus 4.8 的平台边界说明，已补入局限；README blob SHA：`ea486ccf7a43c897f2724b835cb1e2d8b6d72c97`。


## 官方资料复核（2026-11-28）
- README：https://github.com/elementalsouls/Claude-BugHunter/blob/HEAD/README.md
- README blob SHA：`ea486ccf7a43c897f2724b835cb1e2d8b6d72c97`
- 重新读取当前官方 README；正文能力、用法、实例和局限与官方材料核对，本次保留既有详细说明并仅合并当天榜单事实。
