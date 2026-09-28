---
repo: "jundot/omlx"
first_seen: 2026-09-15
last_seen: 2026-09-15
recommend_score: 9.2
trending_count: 1
stars_today: 370
category: ["AI", "Developer Tools", "Local LLM"]
tags: ["github/local-llm", "github/mlx", "github/apple-silicon", "github/inference", "github/kv-cache"]
---
# jundot/omlx

## 项目定位
Apple Silicon 本地 LLM 推理服务器，强调 continuous batching 与 RAM+SSD 分层 KV Cache。

## 核心功能 / 实现特点
- Python/MLX + SwiftUI 菜单栏。
- prefix sharing、SSD KV 持久化、模型 LRU、LLM/VLM/embedding/reranker、多 API 兼容。

## 主要优点
- 对长会话 Coding Agent 很实用，KV 可跨请求/重启复用。
- 本地多模型统一服务与管理体验完整。

## 局限 / 注意点
- 仅 Apple Silicon/macOS。
- SSD KV 收益依赖命中率、I/O 延迟与写放大，必须实测。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-15 | +370 | 9.2 |

## 相关主题
[[Developer-Tools]] · [[Context-Engineering]]

## 相关日报
- [[2026-09-15]]

## 怎么利用
在 Apple Silicon 上启动本地推理服务，配置模型、continuous batching 与分层 KV Cache，再用 OpenAI 兼容客户端压测延迟和吞吐。

## 实际例子
**可推导用法：** 场景 → 在 Mac Studio 提供团队内网推理。输入 → 量化模型和并发请求。操作 → 启动 omlx 并调节 RAM/SSD KV。输出 → 本地 API、吞吐和内存占用数据。
