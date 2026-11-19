---
stats_as_of: "2026-11-19"
documentation_checked_at: "2026-11-19"
fetched_at: "2026-11-19T08:11:32+08:00"
type: github-project
repo: "openvinotoolkit/openvino"
url: "https://github.com/openvinotoolkit/openvino"
first_seen: "2026-11-19"
last_seen: "2026-11-19"
trending_count: 1
github_rank: 13
language: "C++"
total_stars: 11318
forks: 3601
stars_today: 24
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
**场景 →** 场景：部署 PyTorch 图像模型。用 OpenVINO 转换模型，创建 Core 并 `compile_model(..., "CPU")`，输入张量后得到推理结果。

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

## 相关主题
[[Topics/AI|AI]] · [[Topics/Inference|Inference]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/11/2026-11-19|2026-11-19]]

## GitHub 原始链接
https://github.com/openvinotoolkit/openvino

## 官方资料复核（2026-11-19）
- README：https://github.com/openvinotoolkit/openvino/blob/HEAD/README.md
- README blob SHA：`7fa8d27f1e8f8e7d675aebc7a0a7c718c5b26d32`
- 说明：项目卡反映核对日的当前官方资料与当天实时榜单事实。
