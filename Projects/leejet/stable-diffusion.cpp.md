---
repo: "leejet/stable-diffusion.cpp"
url: "https://github.com/leejet/stable-diffusion.cpp"
first_seen: 2026-09-25
last_seen: 2026-09-25
trending_count: 1
github_rank: 14
stars_today: null
total_stars: 7440
forks: 832
language: "C++"
metadata_checked_at: "2026-09-28T16:09:06+08:00"
snapshot_status: archived_backfill
topics: ["AI", "Image-Generation", "Local-Inference"]
status: active
---
# leejet/stable-diffusion.cpp

## 一句话说明
用纯 C/C++ 与 ggml 在本地运行 Stable Diffusion、FLUX、Qwen Image、Wan 等图像/视频扩散模型。

> 使用方式依据仓库当前 README 核对于 2026-09-28；这不代表历史上榜当日的 README 版本。

## 它能做什么
- 轻量、少依赖的 C/C++ 推理
- 覆盖文本生图、图生图、编辑与多种视频模型
- 支持 CPU 与多类 GPU 后端，并提供 CLI/Web UI

## 怎么利用
下载项目支持的 GGUF/模型权重，按目标硬件编译后通过 CLI 或内置 Web UI 运行；先用低分辨率与少步数验证模型和显存，再逐步提高质量。

## 实际例子
**官方能力对应场景：** 场景 → 在无 Python 环境的工作站生成产品草图。输入 → Qwen Image 或 SDXL 权重与提示词。操作 → 编译 `sd-cli`，指定模型、尺寸和步数运行。输出 → 本地 PNG；参数和 seed 可保存复现。

## 适合谁
需要嵌入式、本地或跨平台扩散推理的 C/C++ 开发者和生成式媒体用户。

## 局限 / 注意点
项目快速演进，API/CLI 可能变化；模型许可、显存、量化质量与不同后端兼容性需分别验证。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-09-25 | 14 | 未保存 | 未保存 | 未保存 | archived_backfill |

> 上表只保留归档可证明的日期与原始顺序；当前 Stars/Forks 仅记录在 frontmatter 的 `metadata_checked_at` 快照，不冒充历史数值。

## 相关主题
[[Topics/AI|AI]] · [[Topics/Image-Generation|Image-Generation]] · [[Topics/Local-Inference|Local-Inference]]

## 相关日报
- [[Daily/2026/09/2026-09-25|2026-09-25]]
