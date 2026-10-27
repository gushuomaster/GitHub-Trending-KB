---
type: github-project
repo: "NVIDIA/SkillSpector"
url: "https://github.com/NVIDIA/SkillSpector"
first_seen: "2026-10-27"
last_seen: "2026-10-27"
trending_count: 1
github_rank: 7
stars_today: 214
total_stars: 22165
forks: 1936
language: "Python"
fetched_at: "2026-10-27T08:08:24+08:00"
documentation_checked_at: "2026-10-27"
stats_as_of: "2026-10-27"
snapshot_status: live
category: ["Security", "Agent Skill", "Static Analysis"]
topics: ["Security", "Agent Skill", "Prompt Injection", "Supply Chain"]
status: active
---
# NVIDIA/SkillSpector

## 一句话说明
在安装 AI Agent Skill 之前扫描其中的提示词、代码和依赖风险，帮助团队发现提示注入、数据外泄、危险代码与供应链问题。

## 它能做什么
- 接受 Git 仓库、URL、ZIP、目录或单个文件作为扫描输入。
- 用 17 类、71 种漏洞模式做静态分析，并可追加 LLM 语义评估。
- 查询 OSV.dev 检查已知漏洞，离线时自动退回本地分析。
- 输出终端、JSON、Markdown 或 SARIF 报告，并用 0–100 风险分数和严重级别说明处置建议。
- 允许用规则或指纹基线接受已知发现，让后续扫描突出新增问题。

## 怎么利用
把 SkillSpector 放在“下载第三方 Skill”与“加入 Agent 环境”之间。输入候选仓库、压缩包或本地 Skill 目录；先运行不调用模型的静态扫描，再按需配置模型做语义分析；最终把 SARIF 接入 CI，或把 Markdown/JSON 报告交给安全审查，只有风险可接受的 Skill 才进入安装流程。

## 实际例子
**官方用法 → 场景：** 团队准备把 `my-skill` 加入 Codex。**输入：** 该 Skill 的本地目录。**操作：** 安装 CLI，以 `--no-llm` 扫描并导出 SARIF；将报告作为 CI 审查材料。**输出：** 含风险分数、严重级别、命中位置和修复建议的 `report.sarif`。

```bash
uv tool install git+https://github.com/NVIDIA/skillspector.git
skillspector scan ./my-skill --no-llm --format sarif --output report.sarif
```

## 适合谁
负责 Coding Agent、MCP 或内部 Skill 市场准入的安全工程师、平台团队与需要审计第三方自动化扩展的开发者。

## 局限 / 注意点
- 静态规则和可选 LLM 判断都可能产生误报或漏报，报告不能替代人工代码审查、隔离运行与最小权限。
- 项目要求 Python 3.12+；LLM 分析需要自行配置受支持供应商的凭据。远程仓库和压缩包受 100 MiB、ZIP 10,000 项及单文件 1 MiB 等资源上限约束，超限会失败关闭。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-27 | 7 | 214 | 22165 | 1936 | GitHub Today live snapshot |

## 相关主题
[[Topics/Security|Security]] · [[Topics/Agent-Skill|Agent-Skill]] · [[Topics/Prompt-Injection|Prompt-Injection]] · [[Topics/Supply-Chain|Supply-Chain]]

## 相关日报
- [[Daily/2026/10/2026-10-27|2026-10-27]]

## GitHub 原始链接
https://github.com/NVIDIA/SkillSpector

## 官方资料复核（2026-10-27）
- README：https://github.com/NVIDIA/SkillSpector/blob/main/README.md
- README blob SHA：`fecbfb386b5c12a7e199c47a31c550fadd650095`

