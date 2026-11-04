---
type: "github-project"
repo: "kornia/kornia"
url: "https://github.com/kornia/kornia"
first_seen: "2026-11-02"
last_seen: "2026-11-03"
trending_count: 2
github_rank: 9
stars_today: 412
total_stars: 12125
forks: 1487
language: "Python"
fetched_at: "2026-11-03T08:10:36+08:00"
documentation_checked_at: "2026-11-03"
stats_as_of: "2026-11-03"
snapshot_status: "live"
category: ["Computer Vision","PyTorch Library"]
topics: ["Spatial AI","Differentiable Programming","Geometry"]
status: active
---
# kornia/kornia

## 一句话说明
建立在 PyTorch 上的可微分计算机视觉与几何库，让图像处理、增强、特征和相机几何直接参与 GPU 批处理与梯度计算。

## 它能做什么
- 提供滤波、颜色、形态学、增强和图像质量算子。
- 覆盖相机模型、投影、深度、位姿、RANSAC 与局部特征匹配。
- 支持批量 GPU、自动微分、torch.compile 和大量 ONNX 导出配置。

## 怎么利用
安装 `kornia`，把 PyTorch 图像张量传给灰度、滤波或增强算子；算子在同一设备上批量执行，输出仍是可继续反向传播的张量。

## 实际例子
**场景 →** 安装 `kornia`，把 PyTorch 图像张量传给灰度、滤波或增强算子；算子在同一设备上批量执行，输出仍是可继续反向传播的张量。

**输入 →** 批量 PyTorch 图像张量、对应掩码和一组几何/颜色增强参数。

**操作 →** 用 `AugmentationSequential` 对图像和掩码复用同一次随机变换，在 GPU 上保持张量流程。

**输出 →** 空间对齐的增强图像与掩码，可直接送入训练并对支持的算子继续反向传播。

## 关键命令
```bash
pip install kornia
```

## 适合谁
在 PyTorch 中开发视觉模型、可微几何或批量 GPU 图像处理的研究与工程人员。

## 局限 / 注意点
优势主要在批量 GPU 工作流；单张 uint8 CPU 操作可能不如 OpenCV，且 RANSAC 和部分学习特征提取并非可微分。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-02 | 9 | 101 | 11775 | 1465 | GitHub Today live snapshot |
| 2026-11-03 | 9 | 412 | 12125 | 1487 | GitHub Today live snapshot |

## 最近变化
- 2026-11-02：首次建立项目卡并按官方 README 核对主要能力、用法与限制。

## 相关主题
"[[Topics/Spatial-AI|Spatial AI]]" · "[[Topics/Differentiable-Programming|Differentiable Programming]]" · "[[Topics/Geometry|Geometry]]"

## 相关日报
- [[Daily/2026/11/2026-11-02|2026-11-02]]
- [[Daily/2026/11/2026-11-03|2026-11-03]]

## GitHub 原始链接
https://github.com/kornia/kornia

## 官方资料复核（2026-11-02）
- README：https://github.com/kornia/kornia/blob/main/README.md
- README blob SHA：`47ce0f17e04ae5be4c4ffa8d6b03d30c439d1195`
- 榜单数据来自同一次 GitHub Trending Any / Any / Today 页面采集；主要语言未展示时明确记为“未声明”。

## 官方资料复核（2026-11-03）
- README：https://github.com/kornia/kornia/blob/HEAD/README.md
- 本次按当前官方 README 复核；仅增补当天榜单事实和复核记录，原有能力说明、案例、分类、标签、风险说明与历史均保留。
