---
type: github-project
repo: "ggml-org/llama.cpp"
url: "https://github.com/ggml-org/llama.cpp"
first_seen: "2026-11-13"
last_seen: "2026-11-13"
trending_count: 1
language: "C++"
total_stars: 134541
forks: 25507
stars_today: 176
github_rank: 13
fetched_at: "2026-11-13T08:07:57+08:00"
documentation_checked_at: "2026-11-13"
stats_as_of: "2026-11-13"
snapshot_status: "live"
category: ["LLM Inference","C++","Local AI"]
topics: ["LLM-Inference","C++","Local-AI"]
---
# ggml-org/llama.cpp

## 一句话说明
llama.cpp 用轻依赖 C/C++ 在本地和云端运行大语言模型与视觉语言模型，并通过量化与多种硬件后端降低部署门槛。

## 它能做什么
- 以 C/C++ 在本地或云端运行 LLM 与 VLM，并提供跨平台预编译版本。
- 从 Hugging Face 获取 GGUF 模型，通过 CLI 对话或启动 OpenAI 兼容服务。
- 提供多档整数量化和 CPU+GPU 混合推理，以降低内存/显存需求。
- 覆盖 Metal、CUDA、HIP、Vulkan、SYCL、OpenCL 等多类硬件后端。

## 怎么利用
根据系统安装 llama.cpp，输入 Hugging Face GGUF 模型标识；用 `llama cli` 直接交互，或用 `llama serve` 启动 HTTP 服务。工具下载模型、选择可用硬件后端并输出本地生成结果。

## 实际例子
**官方 Quick Start →** 用 `llama cli -hf ggml-org/Qwen3.5-0.8B-GGUF` 下载并运行小模型；需要应用接入时改用 `llama serve -hf ...`，得到兼容 API 和内置 Web UI。

## 关键命令
```bash
llama cli -hf ggml-org/Qwen3.5-0.8B-GGUF
llama serve -hf ggml-org/Qwen3.5-0.8B-GGUF
```

## 适合谁
需要在笔记本、工作站、服务器或多种加速卡上部署本地模型，并希望控制量化、后端和资源占用的 AI 工程师。

## 局限 / 注意点
模型权重需单独遵守许可证并占用大量磁盘、内存或显存；不同量化与后端会影响质量、速度和兼容性，生产部署前需按目标硬件基准测试。部分后端仍在开发中。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-13 | 13 | 176 | 134541 | 25507 | GitHub Today live snapshot |

## 相关主题
[[Topics/LLM-Inference|LLM-Inference]] · [[Topics/C++|C++]] · [[Topics/Local-AI|Local-AI]]

## 相关日报
- [[Daily/2026/11/2026-11-13|2026-11-13]]

## GitHub 原始链接
https://github.com/ggml-org/llama.cpp

## 官方资料复核（2026-11-13）
- README：https://github.com/ggml-org/llama.cpp/blob/HEAD/README.md
- README blob SHA：`84e9eb5d929512ae10fbeb15d23df5af58480b50`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
