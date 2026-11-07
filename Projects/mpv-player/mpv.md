---
type: github-project
repo: "mpv-player/mpv"
url: "https://github.com/mpv-player/mpv"
first_seen: "2026-11-07"
last_seen: "2026-11-07"
trending_count: 1
language: "C"
total_stars: 37872
forks: 3632
stars_today: 37
github_rank: 4
fetched_at: "2026-11-07T08:04:42+08:00"
documentation_checked_at: "2026-11-07"
stats_as_of: "2026-11-07"
snapshot_status: "live"
category: ["Media Player", "CLI", "Video"]
topics: ["Media Player", "CLI", "Video"]
---
# mpv-player/mpv

## 一句话说明
mpv 是可脚本化的命令行媒体播放器，用统一入口播放多种音视频格式、编解码器和字幕。

## 它能做什么
- 播放广泛的本地文件、网络流、音视频编码与字幕格式。
- 通过命令行参数、配置文件和用户脚本定制播放与自动化行为。
- 支持显式启用硬件解码，并使用着色器完成视频渲染和缩放。

## 怎么利用
如果要检查带字幕的视频文件，可运行 mpv 指定文件与字幕；在 CPU 解码不足时显式加上硬件解码参数，播放器输出可交互播放窗口和终端状态。

## 实际例子
**官方资料支持的场景 →** 如果要检查带字幕的视频文件，可运行 mpv 指定文件与字幕；在 CPU 解码不足时显式加上硬件解码参数，播放器输出可交互播放窗口和终端状态。

## 关键命令
```bash
mpv video.mkv
mpv --hwdec=auto video.mkv
```

## 适合谁
需要高兼容播放、命令行批处理、字幕校验或自定义播放脚本的影音用户和开发者。

## 局限 / 注意点
硬件解码默认不启用，低性能 GPU 可能出现撕裂或卡顿；README 仅积极支持较新的 Linux、Windows 10 1607+ 与 macOS 10.15+。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-07 | 4 | 37 | 37872 | 3632 | GitHub Today live snapshot |

## 相关主题
[[Topics/Media Player|Media Player]] · [[Topics/CLI|CLI]] · [[Topics/Video|Video]]

## 相关日报
- [[Daily/2026/11/2026-11-07|2026-11-07]]

## GitHub 原始链接
https://github.com/mpv-player/mpv

## 官方资料复核（2026-11-07）
- README：https://github.com/mpv-player/mpv/blob/HEAD/README.md
- README blob SHA：`0d8caf101928aa0831583fd5742cb16d48d43315`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
