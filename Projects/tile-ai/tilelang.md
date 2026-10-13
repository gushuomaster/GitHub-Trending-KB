---
type: github-project
repo: "tile-ai/tilelang"
url: "https://github.com/tile-ai/tilelang"
first_seen: "2026-10-02"
last_seen: "2026-10-02"
trending_count: 1
github_rank: 11
language: null
total_stars: null
forks: null
stars_today: null
category: ["AI", "GPU", "Compiler", "Developer-Tools"]
tags: ["kernel", "dsl", "cuda", "tvm"]
topics: ["AI", "Developer-Tools", "GPU"]
---
# tile-ai/tilelang

## 一句话说明
以 Python 风格 DSL 编写并编译高性能张量算子，让研究者较少接触底层 CUDA 细节也能实现和调优 GPU、CPU 或 NPU kernel。

## 它能做什么
- 用 `@tilelang.jit` 描述 GEMM、反量化 GEMM、FlashAttention、LinearAttention 等算子。
- 根据目标后端生成和编译 kernel，并提供运行、性能测量与正确性验证。
- 主要支持 NVIDIA CUDA，另有 AMD ROCm、Huawei Ascend 950、Apple Metal 等后端；LLVM CPU、CuTe DSL、WebGPU 等处于实验或独立生态阶段。
- 可把自定义 kernel 接入 PyTorch 等上层框架，替换热点算子。

## 怎么利用
先在与目标硬件匹配的环境安装 TileLang，定义输入形状、数据类型、tile 布局与计算循环，然后用 `@tilelang.jit` 编译。把真实张量交给生成的 kernel，并与 PyTorch/NumPy 参考结果做数值校验；通过 profiler 比较延迟与吞吐后，再集成进训练或推理代码。

## 实际例子
**官方 Quickstart →** 定义 FP16 输入、FP32 累加并融合 ReLU 的矩阵乘法。**输入 →** 两个兼容形状的半精度矩阵。**操作 →** 用 TileLang DSL 写分块加载和计算，JIT 编译并运行，再与参考实现比较。**输出 →** 自定义 GEMM 结果、正确性检查和可用于调优的性能数据。

## 关键命令
```bash
pip install tilelang
python -c "import tilelang; print(tilelang.__version__)"
```

## 适合谁
开发 LLM/深度学习 kernel 的性能工程师、编译器研究者，以及需要快速试验算子融合与硬件映射的团队。

## 局限 / 注意点
夜间版本和实验后端稳定性有限；编译器、驱动、运行时与硬件要求因后端不同。示例中的性能不能直接外推到其他形状和设备，集成前必须在目标硬件上验证数值误差、边界形状与实际吞吐。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-02 | 11 | 未保存 | 未保存 | 日期匹配语言不限归档 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Developer-Tools|Developer-Tools]] · [[Topics/GPU|GPU]]

## 相关日报
- [[Daily/2026/10/2026-10-02|2026-10-02]]

## GitHub 原始链接
https://github.com/tile-ai/tilelang

## 官方资料核对
- 核对日期：2026-10-13
- README：https://github.com/tile-ai/tilelang/blob/main/README.md
- README blob SHA：9e93a7d9c3b636dd68d3276587b88a282ed6f57f
- 说明：当前 README 与后端支持状况只代表核对日，不冒充 2026-10-02 的项目版本。
