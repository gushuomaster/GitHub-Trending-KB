---
repo: "JustVugg/colibri"
first_seen: 2026-09-14
last_seen: 2026-09-15
recommend_score: 9.5
trending_count: 2
stars_today: 652
category: ["AI", "Developer Tools", "Local LLM"]
tags: ["github/local-llm", "github/inference", "github/c", "github/moe", "github/gpu", "github/developer-tools"]
---
# JustVugg/colibri

## 项目定位
通过 VRAM/RAM/NVMe 分层和磁盘流式专家加载，在普通硬件运行超大 MoE 的本地推理引擎。

## 核心功能 / 实现特点
纯 C 核心；CPU/CUDA/Metal；专家缓存/预取；统一内存规划；多机路径。

## 主要优点
- “权重不必全驻留内存”路线对超大 MoE 很有工程研究价值。
- 纯 C、跨 CPU/GPU 后端，社区真实硬件验证丰富。

## 局限 / 注意点
- EOS、overlay safetensors、模型容器与 Ampere 小显存 OOM 等问题仍待收敛。
- 能运行超大模型不代表达到交互式吞吐，NVMe 容量/带宽是关键约束。

## 最近变化
- 连续第 2 次记录；热度从 +960 降至约 +652，评分 9.6 → 9.5。
- v1.11.0 后仍处兼容性验证期，因此暂不继续抬分。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-14 | +960 | 9.6 |
| 2026-09-15 | +652 | 9.5 |

## 相关主题
[[AI]] · [[Developer-Tools]]

## 相关日报
- [[2026-09-14]]
- [[2026-09-15]]
