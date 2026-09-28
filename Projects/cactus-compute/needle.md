---
repo: "cactus-compute/needle"
first_seen: 2026-09-20
last_seen: 2026-09-20
recommend_score: 9.1
trending_count: 1
stars_today: 207
category: ["AI","Agent","Edge AI","Local LLM"]
tags: ["github/edge-ai","github/local-llm","github/tool-calling","github/python"]
---
# cactus-compute/needle
## 项目定位
面向手机、穿戴、机器人、汽车和微控制器的超小型 Automation Foundation Model。
## 核心功能 / 实现特点
2-bit、8–29MB 级模型，面向 tool calling、结构化抽取与 embeddings；Python/JAX + Cactus 原生推理栈；仓库 9/19 仍有更新。
## 最近变化
- 2026-09-20 首次上榜：+207 stars，总星约 11.6k。
- 端侧 Agent 从“压缩通用 LLM”转向为工具调用专门训练的小模型，方向值得持续跟踪。
## 局限 / 注意点
不是通用聊天模型；社区已报告微调发布版本、CQ4 转换、Windows runtime 版本偏差、多 fine-tune 同时加载等问题，生产使用应先验证完整 runtime/tool-call 链路。
## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-20 | +207 | 9.1 |
## 相关主题
[[Agent]] · [[Edge-AI]] · [[Developer-Tools]]
## 相关日报
- [[2026-09-20]]

## 怎么利用
把小模型部署到手机或边缘设备，给它有限工具 schema 和结构化抽取任务；先在目标 runtime 上验证量化、延迟和调用正确率。

## 实际例子
**可推导用法：** 场景 → 手表离线识别“开始 20 分钟计时”。输入 → 文本指令和 timer 工具 schema。操作 → Needle 输出工具名与参数。输出 → 本地触发计时器，无需上传云端。
