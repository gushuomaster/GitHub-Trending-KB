---
repo: "akitaonrails/ai-memory"
url: "https://github.com/akitaonrails/ai-memory"
first_seen: 2026-09-22
last_seen: 2026-09-22
trending_count: 1
github_rank: 4
stars_today: 217
total_stars: 7611
language: Rust
category: ["AI","Agent","Memory"]
tags: ["agent","memory","handoff","coding-agent","rust"]
topics: ["Agent","Context-Engineering"]
status: active
---
# akitaonrails/ai-memory
## 项目定位
为 Coding Agent CLI 提供长期记忆，并支持不同 Agent/厂商之间的任务交接。
## 核心功能与技术特点
Rust 实现；核心价值是把跨会话、跨 Agent 的工作上下文从单一厂商会话中解耦。
## 适用场景
长期编码任务、Claude/Codex 等多 Agent 切换、项目级持续上下文。
## 主要优点
解决真实的 Agent handoff 痛点；本地工具链友好；Rust 适合轻量 CLI/持久服务。
## 局限 / 注意点
记忆检索质量、冲突/过期信息治理和敏感上下文隔离决定长期可用性。
## 为什么值得记录
Agent Memory 正从模型特性转为独立基础设施。
## Trending History
| 日期 | GitHub Rank | Stars Today | Total Stars | Event |
|---|---:|---:|---:|---|
| 2026-09-22 | 4 | +217 | 7611 | NEW |
## 相关主题
[[Agent]] · [[Context-Engineering]]
## 相关日报
- [[2026-09-22]]

## 怎么利用
在 Coding Agent 完成阶段性任务时保存决策、约束和未完成项；切换到另一 Agent 时读取同一记忆包继续，而不是重新粘贴全部历史。

## 实际例子
**可推导用法：** 场景 → 从 Claude Code 切换到 Codex 接手重构。输入 → 架构决策、已改文件和剩余任务。操作 → 写入 ai-memory 后由 Codex 加载。输出 → 带上下文的跨厂商 handoff。
