---
type: github-project
repo: "Likely7/Veyra-NRVideo"
url: "https://github.com/Likely7/Veyra-NRVideo"
first_seen: "2026-11-14"
last_seen: "2026-11-14"
trending_count: 1
language: "C++"
total_stars: 1615
forks: 71
stars_today: 256
github_rank: 11
fetched_at: "2026-11-14T08:06:26+08:00"
documentation_checked_at: "2026-11-14"
stats_as_of: "2026-11-14"
snapshot_status: "live"
category: ["Video Enhancement","GPU","Windows"]
topics: ["Video","GPU","Frame-Generation"]
---
# Likely7/Veyra-NRVideo

## 一句话说明
Veyra 是面向 Windows 11 的实时 GPU 视频增强播放器与采集工具，把本地视频、采集卡和游戏串流接入超分、降噪、HDR 与帧生成管线。

## 它能做什么
- 对视频、图片、采集卡、屏幕以及 PS5/PC/Xbox 串流做实时增强和预览。
- 提供多层降噪、超分、HDR、帧生成、色彩处理及 List/Node 两套管线编辑方式。
- 支持截图、处理后录制和 MP4/MKV 队列导出，并保留音轨和字幕选择。
- 覆盖 NVIDIA 与 AMD 多种后端，并提供 OBS Game Capture 兼容选项。

## 怎么利用
下载 2.1.6 与显卡匹配的 NVIDIA 或 AMD 压缩包，解压到新的可写目录并运行 `veyra_qml_ui.exe`；先关闭效果验证声音画面，再逐项启用 NR、SR 和 FG，输出实时增强预览。升级时只迁移用户数据和自定义 LUT，不要混入旧 runtime 或 DLL。

## 实际例子
**官方便携版流程 →** 下载与显卡匹配的 NVIDIA 或 AMD 压缩包，解压到新目录并运行 `veyra_qml_ui.exe`；先关闭效果验证声音画面，再逐项启用 NR、SR 和 FG，输出实时增强预览。

## 关键命令
```bash
# 下载并解压匹配显卡的便携包
veyra_qml_ui.exe
```

## 适合谁
需要在 Windows 11 上实时增强本地视频、采集卡或游戏串流，并具备独立验证显卡兼容性的影音用户。

## 局限 / 注意点
要求 Windows 11 x64、DirectX 12 和匹配的 GPU/驱动；高分辨率、多层 NR 与 FG 会显著增加 GPU/显存负担。部分 AMD、RTX 30/40、Xbox、VRR 与覆盖层组合仍未充分验证；Node 模式不支持离线导出或 List 模式的全局 NR 保护区，导出前必须切回 List 并重新核对效果。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-14 | 11 | 256 | 1615 | 71 | GitHub Today live snapshot |

## 相关主题
[[Topics/Video|Video]] · [[Topics/GPU|GPU]] · [[Topics/Frame-Generation|Frame-Generation]]

## 相关日报
- [[Daily/2026/11/2026-11-14|2026-11-14]]

## GitHub 原始链接
https://github.com/Likely7/Veyra-NRVideo

## 官方资料复核（2026-11-14）
- README：https://github.com/Likely7/Veyra-NRVideo/blob/HEAD/README.md
- README blob SHA：`e15c24374e1817005ed58d2485ba3a6230eec8e6`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
