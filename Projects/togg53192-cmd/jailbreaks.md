---
type: github-project
repo: "togg53192-cmd/jailbreaks"
url: "https://github.com/togg53192-cmd/jailbreaks"
first_seen: "2026-10-28"
last_seen: "2026-10-29"
trending_count: 2
github_rank: 10
stars_today: 1477
total_stars: 7073
forks: 1013
language: "未声明"
fetched_at: "2026-10-29T08:08:39+08:00"
documentation_checked_at: "2026-10-29"
stats_as_of: "2026-10-29"
snapshot_status: "live"
category: ["Prompt Security", "Research Dataset", "LLM"]
topics: ["Prompt Injection", "Red Team", "System Prompt", "LLM Security"]
status: research
---
# togg53192-cmd/jailbreaks

## 一句话说明
收集面向多种模型和 Agent 宿主的完整系统提示、角色锁、工作区策略与配置文件，可作为研究指令冲突和防御提示注入的测试材料。

## 它能做什么
- 按模型家族整理系统提示、persona、`AGENTS.md`、工作区策略、Grok 配置和 Ollama Modelfile。
- 覆盖 25+ 个目标、31 份可直接读取的完整文件，并标明适用的指令入口。
- 提供按系统提示、项目级 `AGENTS.md`、全局工作区策略和 Ollama 配置使用的格式说明。
- 通过独立版本文件保留提示变化，便于比较模型或宿主更新后的行为差异。

## 怎么利用
把它当作安全测试语料库：选定一个明确模型版本和一份提示，在不连接真实数据或外部写操作的隔离测试环境中运行预先定义的合规测试，记录模型是否错误接受越权指令，再据此加强指令层级、输入隔离和工具授权。输入是版本化测试提示与预期安全规则，输出是可复现的失败样例和修复后的回归结果。

## 实际例子
**可推导用法 → 场景：** 检查内部 Coding Agent 是否会让项目级文本覆盖组织安全规则。**输入：** 一份仓库中的 `AGENTS.md` 样例、禁止外传凭据的固定系统规则和无真实密钥的沙箱。**操作：** 在固定模型版本上分别运行基线与对抗提示，比较工具调用和拒绝行为，并将失败条件加入自动回归。**输出：** 指令优先级缺陷、可复现测试记录和加固后的回归结果。

## 适合谁
研究 Prompt Injection、Agent 指令层级或模型行为变化的安全研究人员，以及需要为内部 Agent 建立对抗测试集的 AI 平台团队。

## 局限 / 注意点
- 仓库明确限定研究和教育用途；不得用于伤害他人、违法、绕过平台政策或违反模型服务条款。
- 提示效果高度依赖模型和版本，文件“可粘贴”不代表经过独立验证或仍然有效。第三方提示应视为不可信输入，只能在隔离、无真实凭据、无外部副作用的环境中评估。
- GitHub Trending 页面未显示主要语言，记为“未声明”。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-28 | 11 | 902 | 5486 | 817 | GitHub Today live snapshot |
| 2026-10-29 | 10 | 1477 | 7073 | 1013 | GitHub Today live snapshot |

## 相关主题
[[Topics/Prompt-Injection|Prompt-Injection]] · [[Topics/Red-Team|Red-Team]] · [[Topics/System-Prompt|System-Prompt]] · [[Topics/LLM-Security|LLM-Security]]

## 相关日报
- [[Daily/2026/10/2026-10-28|2026-10-28]]
- [[Daily/2026/10/2026-10-29|2026-10-29]]

## GitHub 原始链接
https://github.com/togg53192-cmd/jailbreaks

## 官方资料复核（2026-10-29）
- README：https://github.com/togg53192-cmd/jailbreaks/blob/main/README.md
- README blob SHA：`d3d7aa5f46bffbcf06da82b784a199381096cff3`

