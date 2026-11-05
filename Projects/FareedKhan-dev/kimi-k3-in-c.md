---
type: github-project
repo: "FareedKhan-dev/kimi-k3-in-c"
url: "https://github.com/FareedKhan-dev/kimi-k3-in-c"
first_seen: "2026-11-05"
last_seen: "2026-11-05"
trending_count: 1
language: "C"
total_stars: 10475
forks: 1644
stars_today: 351
github_rank: 11
fetched_at: "2026-11-05T14:04:38+08:00"
documentation_checked_at: "2026-11-05"
stats_as_of: "2026-11-05"
snapshot_status: "live"
category: ["AI", "Inference", "Systems"]
topics: ["LLM", "C99", "CPU Inference"]
---
# FareedKhan-dev/kimi-k3-in-c

## 一句话说明
用可移植 C99 在单台 CPU 上以低内存运行官方 2.78 万亿参数 Kimi K3 权重。

## 它能做什么
- 从 NVMe 流式读取 dense trunk 与 experts，不把 1.56TB 权重全部载入 RAM。
- 提供 8GB 到 224GB 内存预设，保持字节级一致结果。
- 支持 XTML 文本对话、历史以及增量 KV/KDA 缓存。
- 用 `make test` 执行无需权重的精确参考测试。

## 怎么利用
准备约 1.7TB 磁盘与 Hugging Face token，下载 96 个 shard 并打包约 109GB trunk，编译后选择内存预设运行文本对话。

## 实际例子
官方给出 8.24GB RAM 的笔记本配置，证明模型可运行，但基准约为 32.69 秒/token，更适合技术验证而非交互式生产服务。

## 适合谁
研究超大 MoE 模型存储、CPU 推理和低内存流式执行的系统与模型工程师。

## 局限 / 注意点
checkpoint 约 1.56TB，需约 1.7TB 磁盘、AVX2/FMA 或 NEON、GCC 9+ 和下载工具；速度很慢。当前 v1 仅文本，不支持工具、图像、服务器或上下文压缩，且推理历史可能包含敏感内容。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-05 | 11 | 351 | 10475 | 1644 | GitHub Today live snapshot |

## 相关主题
[[Topics/LLM|LLM]] · [[Topics/C99|C99]] · [[Topics/CPU-Inference|CPU Inference]]

## 相关日报
- [[Daily/2026/11/2026-11-05|2026-11-05]]

## GitHub 原始链接
https://github.com/FareedKhan-dev/kimi-k3-in-c

## 官方资料复核（2026-11-05）
- README：https://github.com/FareedKhan-dev/kimi-k3-in-c/blob/HEAD/README.md
- README blob SHA：`4286dfa7a57365cd9f6ea7895e189ace5ce4c591`
- 当前资料只代表核对日版本；榜单统计来自同一次 GitHub Trending 页面采集。
