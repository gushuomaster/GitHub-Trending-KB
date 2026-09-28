---
repo: "NVIDIA/Model-Optimizer"
url: "https://github.com/NVIDIA/Model-Optimizer"
first_seen: 2026-09-25
last_seen: 2026-09-27
trending_count: 3
github_rank: 3
stars_today: null
total_stars: 4976
forks: 688
language: "Python"
metadata_checked_at: "2026-09-28T16:09:06+08:00"
snapshot_status: archived_backfill
topics: ["AI", "Inference", "Model-Optimization"]
status: active
---
# NVIDIA/Model-Optimizer

## 一句话说明
用于把 Hugging Face、PyTorch 或 ONNX 模型量化、蒸馏、剪枝或稀疏化，并导出到高性能推理框架。

> 使用方式依据仓库当前 README 核对于 2026-09-28；这不代表历史上榜当日的 README 版本。

## 它能做什么
- 支持量化、蒸馏、剪枝、NAS、稀疏与 speculative decoding
- 可组合 Python API 优化 transformers 与 diffusers 模型
- 导出到 TensorRT-LLM、TensorRT、vLLM、SGLang 等部署框架

## 怎么利用
把训练完成的模型作为输入，先在代表性校准集上尝试 PTQ；若精度不足，再做 QAT/QAD，最后导出量化 checkpoint 并在目标推理框架压测吞吐与精度。

## 实际例子
**官方示例：** 场景 → 压缩 Qwen3.6-35B-A3B。输入 → Hugging Face 模型与校准数据。操作 → 按仓库的 W4A4 NVFP4 + QAD 教程完成量化和蒸馏，再导出给 vLLM。输出 → 更小 checkpoint 与可对比的吞吐/精度结果。

## 适合谁
需要部署 LLM、扩散模型或视觉模型的推理工程师与模型优化研究者。

## 局限 / 注意点
依赖 NVIDIA 生态与目标硬件；量化收益和精度损失必须用自己的数据、并发和上下文长度实测。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-09-25 | 5 | 未保存 | 未保存 | 未保存 | archived_backfill |
| 2026-09-26 | 14 | 未保存 | 未保存 | 未保存 | archived_backfill |
| 2026-09-27 | 3 | 未保存 | 未保存 | 未保存 | archived_backfill |

> 上表只保留归档可证明的日期与原始顺序；当前 Stars/Forks 仅记录在 frontmatter 的 `metadata_checked_at` 快照，不冒充历史数值。

## 相关主题
[[Topics/AI|AI]] · [[Topics/Inference|Inference]] · [[Topics/Model-Optimization|Model-Optimization]]

## 相关日报
- [[Daily/2026/09/2026-09-25|2026-09-25]]
- [[Daily/2026/09/2026-09-26|2026-09-26]]
- [[Daily/2026/09/2026-09-27|2026-09-27]]
