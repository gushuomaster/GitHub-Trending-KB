---
repo: "harry7557558/spirula-studio"
url: "https://github.com/harry7557558/spirula-studio"
first_seen: 2026-09-24
last_seen: 2026-09-24
trending_count: 1
github_rank: 15
stars_today: 99
total_stars: 706
forks: 54
language: C++
category: ["3D","Computer Vision","Creative Tools"]
tags: ["3dgs","gaussian-splatting","vulkan","cuda","mesh"]
topics: ["Visualization","Developer-Tools"]
status: active
---
# harry7557558/spirula-studio

## 一句话说明
跨厂商 3D Gaussian Splatting 训练器，把照片/视频一路处理成 splat 和纹理 mesh，并通过 Vulkan 支持 NVIDIA、AMD、Intel 和 Apple GPU。

## 它能做什么
- 从照片/视频训练 3D Gaussian Splatting。
- 视频抽帧、AI masking、原生 SfM、meshing 和批处理。
- Vulkan/CUDA 后端；支持鱼眼与 360° 相机。
- 在较低 VRAM 下训练大量 Gaussians。

## 怎么利用
下载对应平台二进制，用 GUI 导入视频/图片训练；远程 GPU 可使用 CLI，训练时通过 HTTP viewer 查看进度。

## 实际例子
**场景 →** 把一段绕物体拍摄的视频变成可浏览 3D 场景。 **输入 →** 原始视频。 **操作 →** Spirula 抽帧→mask→SfM→训练 splat→可选 mesh。 **结果 →** 可查看的 Gaussian Splat 或纹理 mesh。

## 适合谁
3D 重建、Gaussian Splatting、数字孪生和视觉内容创作者。

## 局限 / 注意点
主要由单人维护；重建质量仍高度依赖拍摄覆盖、运动模糊、反光/动态物体和 GPU 能力。

## Trending History
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-24 | 15 | +99 | 706 |
## 相关主题
[[Topics/Visualization|Visualization]] · [[Topics/Developer-Tools|Developer-Tools]]
## 相关日报
- [[Daily/2026/09/2026-09-24|2026-09-24]]