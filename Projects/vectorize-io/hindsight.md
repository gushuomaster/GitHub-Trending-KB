---
repo: "vectorize-io/hindsight"
url: "https://github.com/vectorize-io/hindsight"
first_seen: 2026-09-25
last_seen: 2026-09-30
trending_count: 6
github_rank: 3
stars_today: 2575
total_stars: 42812
forks: 5767
language: Python
fetched_at: "2026-09-30T08:04:00+08:00"
category: ["AI", "Agent", "Memory"]
tags: ["agent", "memory", "rag", "long-term-memory", "python"]
topics: ["AI", "Agent", "RAG"]
status: active
---
# vectorize-io/hindsight

## 一句话说明
让 Agent 不只回看聊天记录，而是通过 retain、recall、reflect 三类操作积累长期记忆并随使用学习。

## 它能做什么
- 将事实、对话和观察写入独立 memory bank。
- 按问题检索相关记忆，并生成带倾向/经验的反思结果。
- 支持 Python、Node.js、Go、REST、MCP 与嵌入式部署。
- 可接 25+ LLM Provider，也能使用 Ollama、LM Studio 等本地模型。

## 怎么利用
给每个用户或业务实体分配一个 bank_id；在 Agent 完成一次交互后 retain 关键信息，下次执行前 recall 或 reflect，把长期偏好与历史经验注入当前上下文。

## 实际例子
**场景 →** 客服 Agent 记住客户偏好。 **输入 →** “Alice 在 Google 做软件工程师，并喜欢 Yosemite 徒步”。 **操作 →** 用 `retain(bank_id="alice", content=...)` 写入；下次客户询问行程时用 `recall` 检索。 **输出 →** Agent 能在新会话中结合 Alice 的职业和兴趣给出个性化建议。

```bash
pip install hindsight-client -U
# retain → recall → reflect
```

## 适合谁
需要跨会话用户记忆、研究记忆或长期任务状态的 Agent 开发者。

## 局限 / 注意点
记忆质量仍受 LLM、抽取策略和输入质量影响；自托管需数据库与模型资源。生产环境必须处理隐私、删除请求、bank 隔离、延迟和模型调用成本。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-28 | 2 | +4520 | 38619 |
| 2026-09-29 | 3 | +4561 | 40936 |
| 2026-09-30 | 3 | +2575 | 42812 |


## 历史归档补记
- 2026-09-25：GitHub Trending #2；来源为语言不限归档，Stars Today、当日总 Stars 与 Forks 未保存。
- 2026-09-26：GitHub Trending #3；来源为语言不限归档，Stars Today、当日总 Stars 与 Forks 未保存。
- 2026-09-27：GitHub Trending #2；来源为语言不限归档，Stars Today、当日总 Stars 与 Forks 未保存。

## 相关主题
[[Topics/AI|AI]] · [[Topics/Agent|Agent]] · [[Topics/RAG|RAG]]

## 相关日报
- [[Daily/2026/09/2026-09-28|2026-09-28]]
- [[Daily/2026/09/2026-09-25|2026-09-25]]
- [[Daily/2026/09/2026-09-26|2026-09-26]]
- [[Daily/2026/09/2026-09-27|2026-09-27]]
- [[Daily/2026/09/2026-09-29|2026-09-29]]
- [[Daily/2026/09/2026-09-30|2026-09-30]]
