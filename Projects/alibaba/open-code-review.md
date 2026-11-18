---
type: github-project
repo: "alibaba/open-code-review"
url: "https://github.com/alibaba/open-code-review"
category: ["Code Review","AI Agent","Developer Tools"]
topics: ["Code Review","AI Agent","Developer Tools"]
first_seen: "2026-09-14"
last_seen: "2026-11-18"
trending_count: 12
language: "Go"
total_stars: 53710
forks: 4429
stars_today: 763
github_rank: 3
fetched_at: "2026-11-18T08:04:14+08:00"
documentation_checked_at: "2026-11-18"
stats_as_of: "2026-11-18"
snapshot_status: "live"
---
# alibaba/open-code-review

## 一句话说明
将确定性规则管线与可调用工具的 LLM Agent 组合成行级 AI 代码审查 CLI。

## 它能做什么
- 读取 Git diff 或扫描完整文件，并按行生成结构化审查意见
- 让 Agent 搜索代码库、读取上下文和关联变更
- 内置空指针、线程安全、XSS、SQL 注入等多语言规则
- 保存审查会话并支持 Claude Code、Codex、Cursor 等宿主；Agent Skills 可选 native 或 delegation 两种审查模式

## 怎么利用
官方 Agent Skills 流程：运行 `npx skills add alibaba/open-code-review`，无单独 OCR 模型密钥时选择 delegation 模式，由当前 Coding Agent 按 OCR 的文件选择、规则解析、覆盖要求和结构化报告约束审查 diff；若已配置 OCR Provider，则选择 native 模式运行完整原生管线。两种模式都输出可定位到行的 findings。

## 实际例子
**官方 Agent Skills 工作流：** 在待审仓库安装技能并选择 delegation 模式，当前 Coding Agent 读取 diff 与关联文件，按 OCR 的覆盖和报告规则生成行级 findings；需要 OCR 专用 Provider 与完整原生管线时再切换 native 模式。

## 适合谁
希望在本地、PR 或 CI 中增加行级 AI Review 的研发团队。

## 局限 / 注意点
- Agent Skills 模式要求 Git 2.41+ 和 `ocr` CLI；delegation 不需要单独 OCR Provider，但仍使用宿主 Agent 的认证、额度与费用，且不运行完整 native 管线。官方基准明确以更高 precision 换取较低 recall，仍会漏报；大 changeset 仍需 CI、测试与人工评审兜底。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 证据说明 |
| --- | ---: | ---: | ---: | ---: | --- |
| 2026-09-14 | 14 | 438 | 未保存 | 未保存 | 仓库已存快照 |
| 2026-09-15 | 2 | 未保存 | 未保存 | 未保存 | 仓库已存快照 |
| 2026-09-16 | 1 | 2751 | 未保存 | 未保存 | 仓库已存快照 |
| 2026-09-17 | 1 | 2756 | 未保存 | 未保存 | 仓库已存快照 |
| 2026-09-18 | 1 | 未保存 | 未保存 | 未保存 | 日期匹配归档；可核实统计仅保留原日报证据 |
| 2026-09-19 | 3 | 2724 | 未保存 | 未保存 | 日期匹配语言不限归档；Stars Today 来自原日报 |
| 2026-10-10 | 5 | 326 | 45185 | 3260 | GitHub Today live snapshot |
| 2026-11-14 | 1 | 215 | 50592 | 3762 | GitHub Today live snapshot |
| 2026-11-15 | 5 | 893 | 51418 | 3907 | GitHub Today live snapshot |
| 2026-11-16 | 6 | 691 | 52053 | 4107 | GitHub Today live snapshot |
| 2026-11-17 | 10 | 951 | 52918 | 4294 | GitHub Today live snapshot |
| 2026-11-18 | 3 | 763 | 53710 | 4429 | GitHub Today live snapshot |

## 相关主题
[[Topics/Code Review|Code Review]] · [[Topics/AI Agent|AI Agent]] · [[Topics/Developer Tools|Developer Tools]]

## 相关日报

- [[Daily/2026/09/2026-09-14|2026-09-14]]
- [[Daily/2026/09/2026-09-15|2026-09-15]]
- [[Daily/2026/09/2026-09-16|2026-09-16]]
- [[Daily/2026/09/2026-09-17|2026-09-17]]
- [[Daily/2026/09/2026-09-18|2026-09-18]]
- [[Daily/2026/09/2026-09-19|2026-09-19]]
- [[Daily/2026/10/2026-10-10|2026-10-10]]

- [[Daily/2026/11/2026-11-14|2026-11-14]]

- [[Daily/2026/11/2026-11-15|2026-11-15]]
- [[Daily/2026/11/2026-11-16|2026-11-16]]
- [[Daily/2026/11/2026-11-17|2026-11-17]]
- [[Daily/2026/11/2026-11-18|2026-11-18]]

## GitHub 原始链接
https://github.com/alibaba/open-code-review

## 官方资料核对
- 核对日期：2026-10-10
- README：https://github.com/alibaba/open-code-review/blob/HEAD/README.md
- 说明：项目卡反映核对日可得资料，不声称这些能力与历史上榜日的项目版本完全相同。


## 2026-09-15 历史核验
- GitHub Trending 原始排名：#2
- Language / Total Stars / Forks / Stars Today：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/6f044aff9e480bacdd8f247c44429e626361a26a/archive/repository/2026/2026-09-15/(null).json)
- 归档提交时间：2026-09-15T04:26:32Z；该时间不是页面抓取时间。

## 2026-09-16 历史核验
- GitHub Trending 原始排名：#1
- Stars Today：2751
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/01abc33224d0523ab2a25bced4e1258b69fc6015/archive/repository/2026/2026-09-16/(null).json)
- 归档提交时间：2026-09-16T01:13:23Z；该时间不是页面抓取时间。

## 2026-09-17 历史核验
- GitHub Trending 原始排名：#1
- Stars Today：2756
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/d3548164a40d3c186f33b9a0356e6e30aa857f2b/archive/repository/2026/2026-09-17/(null).json)
- 归档提交时间：2026-09-17T00:22:41Z；该时间不是页面抓取时间。

## 2026-09-18 历史核验
- GitHub Trending 原始排名：#1
- Stars Today：未保存
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/339673fe562fde501a85aaa2f71a287bdb97a440/archive/repository/2026/2026-09-18/(null).json)
- 归档提交时间：2026-09-18T04:12:31Z；该时间不是页面抓取时间。


## 2026-09-19 历史核验
- GitHub Trending 原始排名：#3
- Stars Today：2724
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/50dbf9e6ba9fec94c2305ac03448b8ddd7e15988/archive/repository/2026/2026-09-19/(null).json)
- 归档提交时间：2026-09-19T00:04:06Z；该时间不是页面抓取时间。

## 官方资料复核（2026-11-14）
- README：https://github.com/alibaba/open-code-review/blob/HEAD/README.md
- README blob SHA：`3dcedfdf9db2d9736e25a459f9408a93dd823b2c`
- 本次按当前官方资料复核并合并当天榜单事实；既有说明、案例、主题、风险与较早历史均保留。

## 官方资料复核（2026-11-15）
- README：https://github.com/alibaba/open-code-review/blob/HEAD/README.md
- README blob SHA：`3dcedfdf9db2d9736e25a459f9408a93dd823b2c`
- 本次按当前官方资料复核并合并当天榜单事实；既有说明、案例、分类、主题、风险与较早历史均保留。

## 官方资料复核（2026-11-16）
- README：https://github.com/alibaba/open-code-review/blob/HEAD/README.md
- 本次按当前官方 README 复核并合并当天榜单事实；既有说明、案例、分类、主题、风险与历史内容均保留。

## 官方资料复核（2026-11-17）
- README：https://github.com/alibaba/open-code-review/blob/HEAD/README.md
- README blob SHA：`a5669f6323926276435f61c44fca26ba6b3df906`
- 午后 README 新增 Agent Skills 安装以及 native/delegation 模式边界；本次补充当前工作流与限制，保留既有历史、分类、主题与风险说明。

## 官方资料复核（2026-11-18）
- README：https://github.com/alibaba/open-code-review/blob/HEAD/README.md
- README blob SHA：`a5669f6323926276435f61c44fca26ba6b3df906`
- 本次按当前官方 README 复核并合并当天榜单事实；保留既有说明、案例、分类、主题、风险与较早历史。

