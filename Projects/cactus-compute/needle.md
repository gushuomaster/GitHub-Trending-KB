---
type: github-project
repo: "cactus-compute/needle"
url: "https://github.com/cactus-compute/needle"
first_seen: 2026-09-20
last_seen: 2026-09-20
trending_count: 1
github_rank: 14
stars_today: 207
category: ["Edge AI", "Tool Calling", "TinyML"]
topics: ["Edge AI", "Tool Calling", "TinyML"]
---
# cactus-compute/needle

## 一句话说明
为手机、穿戴、机器人和微控制器设计的 8–29MB 端侧模型，在本地完成工具调用、结构化抽取、Embedding 与语音转写。

## 它能做什么
- 依据函数 schema 选择工具并填写参数
- 用受约束语法输出可解析的结构化字段
- 在同一小模型中生成本地文本向量
- 结合 Whistle 在设备端把语音直接转为工具调用

## 怎么利用
官方 Python 示例：用 `@needle.tool` 声明 `get_weather(city)`，创建 `needle.Needle(tools=[get_weather])` 后输入天气问题；模型返回带城市参数的函数调用并执行，输出本地工具结果。

## 实际例子
**场景 → 输入 → 操作 → 输出：** 官方 Python 示例：用 `@needle.tool` 声明 `get_weather(city)`，创建 `needle.Needle(tools=[get_weather])` 后输入天气问题；模型返回带城市参数的函数调用并执行，输出本地工具结果。

## 适合谁
需要在离线或资源受限设备上完成工具调用、抽取或语音自动化的端侧 AI 团队。

## 局限 / 注意点
- 它牺牲通用聊天能力来换取小体积和特定任务准确率；必须在目标设备验证量化层数、延迟、准确率和平台引擎，默认遥测需按隐私要求关闭。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-20 | 14 | 207 | 未保存 | 日期匹配归档；Stars Today 来自原日报 |

## 相关主题
[[Topics/Edge AI|Edge AI]] · [[Topics/Tool Calling|Tool Calling]] · [[Topics/TinyML|TinyML]]

## 相关日报
- [[Daily/2026/09/2026-09-20|2026-09-20]]

## GitHub 原始链接
https://github.com/cactus-compute/needle

## 官方资料核对
- 核对日期：2026-10-10
- README：https://github.com/cactus-compute/needle/blob/HEAD/README.md
- 说明：项目卡反映核对日可得资料，不声称这些能力与历史上榜日的项目版本完全相同。

## 2026-09-20 历史核验
- GitHub Trending 原始排名：#14
- Stars Today：207
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/aeea175a90b86aba1844727221cf2aaa8decd908/archive/repository/2026/2026-09-20/(null).json)
- 归档提交时间：2026-09-20T00:53:39Z；该时间不是页面抓取时间。
