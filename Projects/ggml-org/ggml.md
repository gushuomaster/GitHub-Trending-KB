---
type: github-project
repo: "ggml-org/ggml"
url: "https://github.com/ggml-org/ggml"
first_seen: "2026-11-16"
last_seen: "2026-11-16"
trending_count: 1
language: "C++"
total_stars: 15900
forks: 2018
stars_today: 43
github_rank: 8
fetched_at: "2026-11-16T08:10:30+08:00"
documentation_checked_at: "2026-11-16"
stats_as_of: "2026-11-16"
snapshot_status: "live"
category: ["Machine Learning", "Tensor Library", "Systems"]
topics: ["Machine-Learning", "Tensor", "C-Plus-Plus"]
---
# ggml-org/ggml

## 一句话说明
ggml 是面向机器学习的轻量级 C/C++ 张量库，用尽量少的依赖在多种 CPU、GPU、NPU 和浏览器环境中执行张量计算。

## 它能做什么
- 使用纯 C/C++ 实现且不依赖外部运行时，便于嵌入本地应用。
- 覆盖 x86、ARM、RISC-V、LoongArch、PowerPC、s390x 与 WebAssembly，并为多种架构提供 SIMD 内核。
- 支持 CPU、GPU、NPU 和浏览器后端，可按目标硬件组合执行路径。
- 提供 2–8 bit 整数量化、MXFP4/NVFP4 微缩放格式，并支持运行期零内存分配。

## 怎么利用
**官方最小示例 →** 克隆仓库并用 CMake 构建 Release 版本，进入 `examples/simple` 运行带完整注释的矩阵乘法示例；输入两个张量，输出计算结果并展示 ggml 图与内存管理方式。

## 实际例子
**官方最小示例 →** 克隆仓库并用 CMake 构建 Release 版本，进入 `examples/simple` 运行带完整注释的矩阵乘法示例；输入两个张量，输出计算结果并展示 ggml 图与内存管理方式。

## 关键命令
```bash
git clone https://github.com/ggml-org/ggml
cmake -S ggml -B ggml/build -DCMAKE_BUILD_TYPE=Release
cmake --build ggml/build -j 8
```

## 适合谁
需要把量化张量计算或本地模型能力嵌入 C/C++、移动端、边缘设备与浏览器应用的系统工程师。

## 局限 / 注意点
ggml 是底层张量库，不是开箱即用的训练或聊天应用；模型结构、算子组合、文件加载和服务接口仍需上层项目实现。不同硬件后端的算子覆盖与性能并不完全一致，核心修改还建议通过 llama.cpp 提交以获得更广测试。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-16 | 8 | 43 | 15900 | 2018 | GitHub Today live snapshot |

## 相关主题
[[Topics/Machine-Learning|Machine-Learning]] · [[Topics/Tensor|Tensor]] · [[Topics/C-Plus-Plus|C-Plus-Plus]]

## 相关日报
- [[Daily/2026/11/2026-11-16|2026-11-16]]

## GitHub 原始链接
https://github.com/ggml-org/ggml

## 官方资料复核（2026-11-16）
- README：https://github.com/ggml-org/ggml/blob/HEAD/README.md
- README blob SHA：`3178f3a5c3e837f4b402c6b0aa5cd587ccc5c152`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
