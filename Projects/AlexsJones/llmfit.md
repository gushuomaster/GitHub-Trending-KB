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

## 怎么利用
先用它扫描 CPU、GPU、RAM 与可用磁盘，再比较目标模型在不同量化和上下文配置下的显存、内存与速度预估；把候选缩小后再到真实推理后端压测。

## 实际例子
**可推导用法：** 场景 → 为 24GB RTX 3090 选择本地模型。输入 → GPU/RAM 信息和 32B、70B 模型候选。操作 → 用 llmfit 比较 Q4/Q8 与上下文配置。输出 → 一份“能否运行、预计速度、需要多少 offload”的候选清单。
