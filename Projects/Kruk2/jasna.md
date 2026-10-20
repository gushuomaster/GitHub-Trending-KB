---
type: github-project
repo: "Kruk2/jasna"
url: "https://github.com/Kruk2/jasna"
first_seen: '2026-10-19'
last_seen: '2026-10-20'
trending_count: 2
github_rank: 9
stars_today: 498
total_stars: 2879
forks: 212
language: "Python"
fetched_at: '2026-10-20T08:07:03+08:00'
documentation_checked_at: '2026-10-20'
stats_as_of: '2026-10-20'
snapshot_status: live
topics: ["Video", "Restoration", "Computer Vision", "Local AI"]
status: active
---
# Kruk2/jasna

## 一句话说明
在本地 GPU 上检测视频或图片中的马赛克区域，并只对选定区域进行时序修复、融合和重新编码。

## 它能做什么
- 自动检测、跟踪并修复视频中的马赛克区域
- 提供 GUI、Segment Editor、实时播放器和 CLI
- 支持免费 BasicVSR++，以及更慢的支持者模型 LTX
- 可处理静态图片、VR180 视频和整目录批处理

## 怎么利用
官方快速流程：下载对应系统和 GPU 的 release，打开 Jasna，加入本地视频、选择免费 BasicVSR++ 参数并点击运行。输入 → 已获授权的视频；处理 → GPU 解码、检测、跟踪、修复、融合和编码；输出 → 仅目标区域被替换的本地视频文件。

## 实际例子
**场景 → 输入 → 操作 → 输出：** 官方快速流程：下载对应系统和 GPU 的 release，打开 Jasna，加入本地视频、选择免费 BasicVSR++ 参数并点击运行。输入 → 已获授权的视频；处理 → GPU 解码、检测、跟踪、修复、融合和编码；输出 → 仅目标区域被替换的本地视频文件。

## 关键命令
```bash
jasna --input input.mp4 --output output.mkv
```

## 适合谁
需要修复自有或已获授权视频素材中马赛克区域，且具备受支持 GPU 的视频制作人员与研究者。

## 局限 / 注意点
修复结果是模型生成的合理纹理，不是被遮挡原始内容的真实恢复；只应处理有权修改的媒体。要求较新的 NVIDIA GPU/驱动，AMD 支持仍属实验性；首次模型准备需约 15–60 分钟，路径不能含非英文字符，部分模型需付费许可证。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-19 | 12 | 115 | 2386 | 187 | GitHub Today live snapshot |

| 2026-10-20 | 9 | 498 | 2879 | 212 | GitHub Today live snapshot |

## 相关主题
[[Topics/Video|Video]] · [[Topics/Restoration|Restoration]] · [[Topics/Computer Vision|Computer Vision]] · [[Topics/Local AI|Local AI]]

## 相关日报
- [[Daily/2026/10/2026-10-19|2026-10-19]]

- [[Daily/2026/10/2026-10-20|2026-10-20]]

## GitHub 原始链接
https://github.com/Kruk2/jasna

## 官方资料复核（2026-10-20）
- README：https://github.com/Kruk2/jasna/blob/main/README.md
- README blob SHA：`2ad9f558d6ffcb14490854be9c51708d2f08c1d2`

