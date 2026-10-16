---
type: github-project
repo: lightseekorg/tokenspeed
url: https://github.com/lightseekorg/tokenspeed
first_seen: '2026-10-16'
last_seen: '2026-10-16'
trending_count: 1
language: Python
total_stars: 2474
forks: 336
stars_today: 30
github_rank: 11
fetched_at: '2026-10-16T08:10:32+08:00'
category: [LLM, Inference, GPU, Developer-Tools]
topics: [LLM, Inference, GPU, Developer-Tools]
documentation_checked_at: '2026-10-16'
stats_as_of: '2026-10-16'
---

# lightseekorg/tokenspeed

## 一句话说明
面向 Agent 高频、多轮请求的高性能 LLM 推理引擎，把大模型部署成 OpenAI 兼容服务，并针对 KV Cache、并行调度和 GPU Kernel 优化吞吐与延迟。

## 它能做什么
- 用有限状态机管理请求生命周期、KV Cache 所有权和计算重叠。
- 提供可插拔 GPU Kernel、调度器和适配不同模型与硬件的后端选择。
- 通过 `tokenspeed serve` 启动 OpenAI 兼容 HTTP API。
- 支持张量、数据与专家并行，并为特定模型提供量化、解析器和后端配方。

## 怎么利用
准备支持的 NVIDIA 或 ROCm GPU 主机、模型权重和足够共享内存，按官方容器或 nightly wheel 安装。输入模型路径、显存/并行配置和服务端口，TokenSpeed 加载模型并调度推理，输出可被 OpenAI SDK 调用的 `/v1` 服务。

## 实际例子
**官方最小服务 → 场景：** 为内部 Agent 部署 `openai/gpt-oss-20b`。**输入：** 可访问的模型权重和一张支持的 GPU。**操作：** 启动服务监听 8000 端口，再用 OpenAI Python 客户端把 `base_url` 指向 `http://localhost:8000/v1`。**输出：** Agent 可通过标准 Chat Completions 接口获得模型回复。

## 关键命令
```sh
python -m pip install --upgrade tokenspeed --extra-index-url https://lightseek.org/whl/nightly
tokenspeed serve openai/gpt-oss-20b --host 0.0.0.0 --port 8000 --tensor-parallel-size 1
```

## 适合谁
需要在 GPU 集群部署 Agent 模型、评估推理吞吐/延迟或开发新 Kernel 与调度策略的推理平台工程师和性能团队。

## 局限 / 注意点
- 官方入门要求 NVIDIA GPU 或 ROCm 7.2 主机、Docker GPU 支持、模型权重与充足共享内存，不适合普通 CPU 环境。
- Nightly 的 TokenSpeed 与 `tokenspeed-kernel` 必须使用同一天版本；CUDA 与 ROCm 索引不可混用。
- 官方示例容器使用 `--privileged`、host network/PID 等高权限参数，生产部署应收紧权限并显式验证模型、量化和硬件组合。

## Trending 历史
- 2026-10-16：#11 · Stars Today：30 · Total Stars：2474 · Forks：336

## 相关主题
[[Topics/LLM|LLM]] · [[Topics/Inference|Inference]] · [[Topics/GPU|GPU]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/10/2026-10-16|2026-10-16]]

## GitHub 原始链接
https://github.com/lightseekorg/tokenspeed

## 官方资料复核（2026-10-16）
- README：https://github.com/lightseekorg/tokenspeed/blob/main/README.md
- Getting Started：https://github.com/lightseekorg/tokenspeed/blob/main/docs/guides/getting-started.md
- Launching：https://github.com/lightseekorg/tokenspeed/blob/main/docs/guides/launching.md

