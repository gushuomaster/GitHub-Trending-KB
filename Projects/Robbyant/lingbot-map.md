---
type: github-project
repo: "Robbyant/lingbot-map"
url: "https://github.com/Robbyant/lingbot-map"
first_seen: 2026-10-10
last_seen: 2026-10-10
trending_count: 1
language: "Python"
total_stars: 17688
forks: 1950
stars_today: 110
github_rank: 10
fetched_at: "2026-10-10T08:02:00+08:00"
category: ["Computer Vision","3D"]
tags: ["github/computer-vision","github/3d"]
---
# Robbyant/lingbot-map

## 一句话说明
把连续相机图像流实时重建为带相机轨迹的三维点云，适合长视频和流式场景建图。

**官方描述：** [ECCV 2026 Best Paper Award Candidate] LingBot-Map: Geometric Context Transformer for Streaming 3D Reconstruction

## 它能做什么
- 用 Geometric Context Transformer 统一坐标定位、稠密几何线索与长程漂移修正
- 通过分页 KV cache 在长序列上进行前馈流式推理
- 提供浏览器中的交互式点云查看器
- 离线管线可从视频或图片目录生成点云飞行 MP4 与配置快照

## 怎么利用
官方 Quick Start：下载模型权重，把 courthouse 示例图片目录交给 `demo.py` 并启用 sky mask；程序在 `localhost:8080` 启动 viser 查看器，输出可交互检查的三维点云和相机轨迹。长序列则用 batch_demo 输出 MP4。

## 实际例子
**场景：** 把一组庭院连续照片重建为可交互检查的三维地图。

**输入：** 官方 courthouse 示例图片目录和下载好的 `lingbot-map.pt` 权重。

**操作：** 安装 PyTorch、项目依赖和可选 FlashInfer，运行 demo 并启用天空遮罩。

**结果：** 浏览器在 `localhost:8080` 展示流式生成的三维点云与相机轨迹；离线管线还可生成点云飞行 MP4。

## 关键命令
```sh
python demo.py --model_path /path/to/lingbot-map.pt \
  --image_folder example/courthouse --mask_sky
```

## 适合谁
研究视觉定位、机器人建图、长视频三维重建或流式 3D 基础模型的计算机视觉工程师。

## 局限 / 注意点
推荐 PyTorch 2.8、CUDA 12.8 和 FlashInfer，需独立下载权重并准备较强 GPU；SDPA 可回退但长序列更慢，重建仍可能受动态物体、天空、低纹理和累计漂移影响。

## Trending 历史
- 2026-10-10：#10 · Stars Today：110 · Total Stars：17688 · Forks：1950

## 相关主题
- [[Topics/Computer Vision]]
- [[Topics/3D]]

## 相关日报
- [[Daily/2026/10/2026-10-10|2026-10-10]]

## GitHub 原始链接
https://github.com/Robbyant/lingbot-map

## 官方资料核对
- 核对日期：2026-10-10
- README：https://github.com/Robbyant/lingbot-map/blob/main/README.md
- README blob SHA：1215f48c5078411c5180498a43b3a0b13f8a0e01
