---
stats_as_of: "2026-11-27"
documentation_checked_at: "2026-11-27"
fetched_at: "2026-11-27T08:10:28+08:00"
type: github-project
repo: "openvinotoolkit/openvino"
url: "https://github.com/openvinotoolkit/openvino"
first_seen: "2026-11-19"
last_seen: "2026-11-27"
trending_count: 9
github_rank: 8
language: "C++"
total_stars: 12817
forks: 3736
stars_today: 176
category: ["AI", "Inference"]
tags: ["ai", "inference"]
topics: ["AI", "Inference", "Developer-Tools"]
snapshot_status: "live"
---
# openvinotoolkit/openvino

## 一句话说明
OpenVINO 是推理优化与部署工具包，把多种训练框架模型转换并运行在 Intel CPU、GPU、NPU 等设备上。

## 它能做什么
- 转换 PyTorch、TensorFlow、ONNX、Keras、Paddle 和 JAX 模型。
- 在 CPU、GPU、NPU 上编译优化推理图。
- 提供 Python、C++、C 与 Node.js API及 GenAI 能力。

## 怎么利用
场景：部署 PyTorch 图像模型。用 OpenVINO 转换模型，创建 Core 并 `compile_model(..., "CPU")`，输入张量后得到推理结果。

## 实际例子
**官方 Python 最小流程 → 场景 → 输入 → 操作 → 输出：** 把已训练的 PyTorch 图像模型部署到 Intel CPU。输入模型和示例张量，用 `ov.convert_model` 转换，再通过 `ov.Core().compile_model(model, "CPU")` 编译并传入待预测张量，输出优化后的推理结果。

## 关键命令
```python
import openvino as ov
model = ov.convert_model(torch_model, example_input=example)
compiled = ov.Core().compile_model(model, "CPU")
```

## 适合谁
需要在 Intel 设备上优化和部署模型的机器学习、边缘计算与推理工程师。

## 局限 / 注意点
算子、精度和设备支持取决于版本与硬件矩阵；转换后必须验证精度、性能和动态形状，遥测可按文档关闭。

## Trending 历史


| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 证据说明 |
| --- | ---: | ---: | ---: | ---: | --- |
| 2026-11-19 | 13 | 24 | 11318 | 3601 | GitHub Today live snapshot |
| 2026-11-20 | 8 | 246 | 11555 | 3621 | GitHub Today live snapshot |
| 2026-11-21 | 8 | 217 | 11783 | 3636 | GitHub Today live snapshot |
| 2026-11-22 | 8 | 200 | 11928 | 3651 | GitHub Today live snapshot |
| 2026-11-23 | 8 | 158 | 12089 | 3657 | GitHub Today live snapshot |
| 2026-11-24 | 8 | 184 | 12277 | 3679 | GitHub Today live snapshot |
| 2026-11-25 | 8 | 185 | 12459 | 3693 | GitHub Today live snapshot |
| 2026-11-26 | 8 | 191 | 12,650 | 3,714 | GitHub Today live snapshot |
| 2026-11-27 | 8 | 176 | 12,817 | 3,736 | GitHub Today live snapshot |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Inference|Inference]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报


- [[Daily/2026/11/2026-11-19|2026-11-19]]

- [[Daily/2026/11/2026-11-20|2026-11-20]]
- [[Daily/2026/11/2026-11-21|2026-11-21]]
- [[Daily/2026/11/2026-11-22|2026-11-22]]
- [[Daily/2026/11/2026-11-23|2026-11-23]]
- [[Daily/2026/11/2026-11-24|2026-11-24]]
- [[Daily/2026/11/2026-11-25|2026-11-25]]
- [[Daily/2026/11/2026-11-26|2026-11-26]]
- [[Daily/2026/11/2026-11-27|2026-11-27]]

## GitHub 原始链接
https://github.com/openvinotoolkit/openvino

## 官方资料复核（2026-11-19）
- README：https://github.com/openvinotoolkit/openvino/blob/HEAD/README.md
- README blob SHA：`7fa8d27f1e8f8e7d675aebc7a0a7c718c5b26d32`
- 说明：项目卡反映核对日的当前官方资料与当天实时榜单事实。

## 官方资料复核（2026-11-20）
- README：https://github.com/openvinotoolkit/openvino/blob/HEAD/README.md
- README blob SHA：`7fa8d27f1e8f8e7d675aebc7a0a7c718c5b26d32`
- 本次按当前官方 README 复核并合并当天榜单事实；保留既有说明、案例、分类、主题、风险与较早历史。

## 最近变化
- 资料核对（2026-11-24）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`7fa8d27f1e8f8e7d675aebc7a0a7c718c5b26d32`。
- 资料核对（2026-11-25）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`7fa8d27f1e8f8e7d675aebc7a0a7c718c5b26d32`。
- 资料核对（2026-11-26）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`7fa8d27f1e8f8e7d675aebc7a0a7c718c5b26d32`。
- 资料核对（2026-11-27）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`7fa8d27f1e8f8e7d675aebc7a0a7c718c5b26d32`。
