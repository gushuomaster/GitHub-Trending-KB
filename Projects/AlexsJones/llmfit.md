---
repo: "AlexsJones/llmfit"
first_seen: 2026-09-11
last_seen: 2026-09-11
recommend_score: 9.3
trending_count: 1
stars_today: 247
category: ["AI", "Developer Tools", "Local LLM"]
tags: ["github/local-llm", "github/gpu", "github/benchmark", "github/rust", "github/quantization"]
---

# AlexsJones/llmfit

## 项目定位
根据本机硬件评估本地 LLM 是否跑得动、预期速度和量化选择的 Rust TUI/CLI。

## 核心功能 / 实现特点
- Rust TUI/CLI。
- 评估 RAM/CPU/GPU、多 GPU、MoE、量化、上下文与速度。
- 兼容 Ollama、llama.cpp、MLX、LM Studio、Docker Model Runner，并维护社区 benchmark。

## 主要优点
- 直接解决本地模型选型和容量规划。
- 社区真实 benchmark 能校准纯理论估算。
- 对多 GPU 和量化比较很实用。

## 局限 / 注意点
- 估算不能替代目标 backend 的实测。
- KV Cache、并发、上下文、offload 会显著改变真实占用。

## 最近变化
- 首次上榜，今日 +247 stars。
- 发布 v1.1.15；优化 TUI viewport；持续加入 RTX/GB10/Intel 等硬件社区 benchmark。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-11 | +247 | 9.3 |

## 相关主题
- [[AI]]
- [[Developer-Tools]]

## 相关日报
- [[2026-09-11]]
