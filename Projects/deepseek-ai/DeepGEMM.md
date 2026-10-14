---
type: github-project
repo: deepseek-ai/DeepGEMM
first_seen: '2026-10-07'
last_seen: '2026-10-07'
url: https://github.com/deepseek-ai/DeepGEMM
trending_count: 1
github_rank: 9
documentation_checked_at: '2026-10-13'
stats_as_of: null
stars_today: null
total_stars: null
forks: null
language: null
---

# deepseek-ai/DeepGEMM

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
针对现代 LLM 计算优化的 CUDA Tensor Core kernel 库，覆盖低精度 GEMM、融合 MoE 和部分注意力相关原语。

## 它能做什么
- 提供 FP8、FP4、BF16 GEMM，以及重叠通信的 Mega MoE 等计算。
- 通过 DeepJIT 在运行时编译 kernels，提供 Python 的 `deep_gemm` 接口。
- 展示 SM90/SM100 的矩阵布局、缩放因子与低精度算子优化方式。

## 怎么利用
先确认硬件与工具链满足 README，再递归克隆子模块，检查并运行 install/develop 脚本；Python 中导入 `deep_gemm`，按接口要求准备张量布局、缩放因子和输出缓冲，再运行正确性与性能测试。

## 实际例子
**可推导用法 → 场景：** 研究 MoE 推理的矩阵乘瓶颈。**输入：** 受支持 GPU 上的专家矩阵与测试形状。**操作：** 比较 DeepGEMM 与基准实现的输出误差及耗时。**输出：** 该硬件/形状下的性能数据，用来判断是否值得集成，而非默认认定加速。

## 适合谁
优化 LLM 训练/推理算子，或学习 CUDA kernel 的 GPU 工程师。

## 局限 / 注意点
当前 README 要求 NVIDIA SM90/SM100、CUDA 12.9+、C++20、PyTorch 2.3+；A6000 和 RTX 3090 不满足该架构要求。低精度数据布局需严格匹配，不能把它当作任意显卡的通用 BLAS 替代。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-07 | 9 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/7a58ec2d6aa31e161897e8b78805a6c3df276209/archive/repository/2026/2026-10-07/(null).json) |

## 相关日报
- [[Daily/2026/10/2026-10-07|2026-10-07]]

## GitHub 原始链接
https://github.com/deepseek-ai/DeepGEMM

## 官方资料复核（2026-10-13）
- README：https://github.com/deepseek-ai/DeepGEMM/blob/main/README.md
- README blob SHA：`d1f793f450cb502d0129732c178bcda69b6bf69b`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。

## 相关主题
[[Topics/AI|AI]] · [[Topics/CUDA|CUDA]] · [[Topics/Inference|Inference]]
