---
repo: "JustVugg/colibri"
first_seen: 2026-09-14
last_seen: 2026-09-14
recommend_score: 9.6
trending_count: 1
stars_today: 960
category: ["AI", "Developer Tools", "Local LLM"]
tags: ["github/local-llm", "github/inference", "github/c", "github/moe", "github/gpu", "github/developer-tools"]
---

# JustVugg/colibri

## 项目定位
面向消费级/工作站硬件运行超大 MoE 模型的本地推理引擎，强调纯 C、零依赖和磁盘流式专家加载。

## 核心功能 / 实现特点
- 将 VRAM、RAM、NVMe 视为统一分层内存，支持 CPU/CUDA/Metal、专家缓存/预取和集群模式。
- 仓库包含 `c/`、`colibri/`、`desktop/`、`web/`、`docker/`、`GPU_BACKENDS.md`；v1.11.0 一次合入 56 个 PR，并增加 GLM-5.3 路由遥测与统一内存规划。

## 主要优点
- 对 744B~T 级 MoE 的“权重不必全驻留内存”路线很有工程价值
- 纯 C/零 Python 运行时，适合研究本地推理、异构内存和磁盘流式架构
- CUDA/Metal/CPU 与多机路径覆盖广，社区有大量真实硬件验证

## 局限 / 注意点
- 最新 Issue 有 EOS 丢失、overlay safetensors 冲突、GLM-5.3 容器缺层等模型转换/格式问题
- Ampere 小显存和部分 MoE/prefill 路径仍有 OOM、崩溃或必须降级的兼容边界

## 最近变化
- 首次上榜；今日 +960 stars。9 月 13 日发布 v1.11.0，推进很快，但同日多条可复现 Issue 说明仍处高速演进期。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-14 | +960 | 9.6 |

## 相关主题
- [[AI]]
- [[Developer-Tools]]

## 相关日报
- [[2026-09-14]]
