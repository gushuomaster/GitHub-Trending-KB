---
type: "github-project"
repo: "beenuar/AiSOC"
url: "https://github.com/beenuar/AiSOC"
first_seen: "2026-11-02"
last_seen: "2026-11-02"
trending_count: 1
github_rank: 10
stars_today: 446
total_stars: 6200
forks: 643
language: "Python"
fetched_at: "2026-11-02T08:06:33+08:00"
documentation_checked_at: "2026-11-02"
stats_as_of: "2026-11-02"
snapshot_status: "live"
category: ["Security Operations","AI Agent"]
topics: ["SOC","MITRE ATT&CK","MCP","Audit"]
status: active
---
# beenuar/AiSOC

## 一句话说明
自托管 AI 安全运营中心，汇集安全遥测、规则命中和威胁情报，再用可审计 Agent 完成事件分组、调查与处置建议。

## 它能做什么
- 规范化告警并运行可执行检测规则、合并事件。
- 记录 Agent 的提示、工具调用、判断和成本，形成可重放决策账本。
- 处置动作须经人工批准，并提供 REST、MCP 和 Web 控制台。

## 怎么利用
克隆仓库后执行 `make up`，向控制台推送测试事件；系统把事件转成告警、运行本地模型调查并显示置信度与理由，输出需由分析员批准的处置建议。

## 实际例子
**场景 →** 克隆仓库后执行 `make up`，向控制台推送测试事件；系统把事件转成告警、运行本地模型调查并显示置信度与理由，输出需由分析员批准的处置建议。

**输入 →** 通过连接器或 API 推送的测试遥测，以及当前规则与威胁情报。

**操作 →** AiSOC 规范化事件、运行检测规则、合并为事件，并让本地 Agent 调查；分析员在控制台查看理由和工具调用。

**输出 →** 带置信度的分流结论、可重放决策账本，以及尚待人工批准的处置建议。

## 关键命令
```bash
git clone https://github.com/beenuar/AiSOC && cd AiSOC
make up
```

## 适合谁
需要自托管告警汇聚、Agent 调查和人工审批闭环的安全运营团队。

## 局限 / 注意点
完整栈要求 Docker Compose v2、约 8 GB 内存和 20 GB 空间，首启还会下载约 2 GB 模型；自动分流不能替代人工安全判断。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-02 | 10 | 446 | 6200 | 643 | GitHub Today live snapshot |

## 最近变化
- 2026-11-02：首次建立项目卡并按官方 README 核对主要能力、用法与限制。

## 相关主题
"[[Topics/SOC|SOC]]" · "[[Topics/MITRE-ATT&CK|MITRE ATT&CK]]" · "[[Topics/MCP|MCP]]" · "[[Topics/Audit|Audit]]"

## 相关日报
- [[Daily/2026/11/2026-11-02|2026-11-02]]

## GitHub 原始链接
https://github.com/beenuar/AiSOC

## 官方资料复核（2026-11-02）
- README：https://github.com/beenuar/AiSOC/blob/main/README.md
- 榜单数据来自同一次 GitHub Trending Any / Any / Today 页面采集；主要语言未展示时明确记为“未声明”。

