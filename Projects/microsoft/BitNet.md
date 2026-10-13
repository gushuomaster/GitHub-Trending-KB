---
type: github-project
repo: "microsoft/BitNet"
url: "https://github.com/microsoft/BitNet"
first_seen: "2026-10-13"
last_seen: "2026-10-13"
trending_count: 1
language: "C++"
total_stars: 40896
forks: 3807
stars_today: 97
github_rank: 8
fetched_at: "2026-10-13T08:05:00+08:00"
category: ["AI", "Inference", "Developer-Tools"]
tags: ["github/ai", "github/llm", "github/inference"]
topics: ["AI", "Inference", "Developer-Tools"]
---
# microsoft/BitNet

## 一句话说明
为 1-bit／1.58-bit 权重的大语言模型提供官方高效推理框架，让兼容模型能在 x86、ARM CPU 或受支持 GPU 上以更低内存运行。

**官方描述：** Official inference framework for 1-bit LLMs

## 它能做什么
- 用针对 I2_S、TL1、TL2 等低比特格式优化的 C++ kernels 执行模型推理。
- 支持 Microsoft BitNet-b1.58-2B-4T、BitNet embedding 模型及若干社区 1-bit 模型。
- 提供模型下载、格式准备、命令行推理和端到端 benchmark 工具。
- 覆盖 x86、ARM CPU，并提供单独的官方 GPU kernel 路径。

## 怎么利用
先准备 Python、CMake、Clang 与 Conda 环境，下载兼容的 GGUF/1-bit 模型并运行 `setup_env.py` 生成对应量化 kernel；之后把提示词交给构建出的推理程序，或用 benchmark 脚本测量不同线程数、提示长度和生成长度，得到文本输出及性能数据。

## 实际例子
**官方安装流程 → 场景：** 在 CPU 工作站验证 BitNet-b1.58-2B-4T。**输入：** 官方 GGUF 模型和一条提示词。**操作：** 克隆含子模块的仓库、安装依赖，下载模型后用 I2_S 配置构建。**输出：** 可运行的低比特推理程序；随后可用端到端 benchmark 比较线程数与吞吐。

## 关键命令
```sh
huggingface-cli download microsoft/BitNet-b1.58-2B-4T-gguf --local-dir models/BitNet-b1.58-2B-4T
python setup_env.py -md models/BitNet-b1.58-2B-4T -q i2_s
python utils/e2e_benchmark.py -m models/BitNet-b1.58-2B-4T -n 200 -p 256 -t 4
```

## 适合谁
需要在 CPU/边缘设备评估低比特 LLM、做推理性能基准或集成 BitNet 模型的推理工程师与研究人员。

## 局限 / 注意点
不能把普通 FP16 模型直接当 1-bit 模型运行，模型、CPU 架构与 kernel 格式必须匹配。构建要求 Python≥3.10、CMake≥3.22、Clang≥18；不同模型/平台支持矩阵并不相同，README 的速度和能耗数据也不能直接外推到任意硬件。

## Trending 历史
- 2026-10-13：#8 · Stars Today：97 · Total Stars：40896 · Forks：3807

## 相关主题
[[Topics/AI|AI]] · [[Topics/Inference|Inference]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/10/2026-10-13|2026-10-13]]

## GitHub 原始链接
https://github.com/microsoft/BitNet

## 官方资料核对
- 核对日期：2026-10-13
- README：https://github.com/microsoft/BitNet/blob/main/README.md

