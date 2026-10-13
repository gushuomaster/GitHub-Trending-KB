---
type: github-project
repo: "pablostanley/yoinks"
url: "https://github.com/pablostanley/yoinks"
first_seen: "2026-10-02"
last_seen: "2026-10-03"
trending_count: 2
github_rank: 17
language: null
total_stars: null
forks: null
stars_today: null
category: ["CLI", "Media", "Developer-Tools"]
tags: ["video-download", "yt-dlp", "ffmpeg", "terminal"]
topics: ["CLI", "Developer-Tools", "Media"]
---
# pablostanley/yoinks

## 一句话说明
在终端从 YouTube、X、Instagram、Threads、TikTok 等大量站点下载自己有权保存的视频或音频，避免网页广告与弹窗。

## 它能做什么
- 接受一个媒体 URL，并通过 yt-dlp 识别站点和可用格式。
- 以交互方式列出视频清晰度，或选择只提取 MP3 音频。
- 首次运行下载 yt-dlp，若系统已有则直接复用；用 ffmpeg 合并视频音轨或转码。
- 默认把成品保存到 `~/Downloads`，并输出下载进度与结果路径。

## 怎么利用
准备 Node.js 18+，通过 npm 全局安装或直接使用 npx。粘贴一个允许下载的媒体 URL，选择分辨率或 audio-only；Yoinks 调用 yt-dlp 获取媒体，再用 ffmpeg 合并或提取音频，最后返回本地文件路径。

## 实际例子
**官方入门 →** 需要离线观看自己发布的教学视频。**输入 →** 视频页面 URL。**操作 →** 运行 `npx yoinks`，粘贴 URL 并选择 1080p。**输出 →** 下载并合并完成的 MP4，默认位于 Downloads。

## 关键命令
```bash
npm install -g yoinks
yoinks
# 或：npx yoinks
```

## 适合谁
需要在终端保存自有媒体、授权素材或离线学习内容的创作者、开发者和研究人员。

## 局限 / 注意点
README 将无交互 `--best`/`--mp3`、自定义输出目录与播放列表列为尚未完成的方向；站点变化可能使 yt-dlp 暂时失效。下载前必须确认版权、平台条款和内容授权，不能用它规避付费或访问控制。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-02 | 12 | 未保存 | 未保存 | 日期匹配语言不限归档 |
| 2026-10-03 | 17 | 未保存 | 未保存 | 仓库已存日期匹配快照 |

## 相关主题
[[Topics/CLI|CLI]] · [[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Media|Media]]

## 相关日报
- [[Daily/2026/10/2026-10-02|2026-10-02]]
- [[Daily/2026/10/2026-10-03|2026-10-03]]

## GitHub 原始链接
https://github.com/pablostanley/yoinks

## 官方资料核对
- 核对日期：2026-10-13
- README：https://github.com/pablostanley/yoinks/blob/main/README.md
- README blob SHA：5b8dfbfd99f3ab325db8a6f203f98c752ce0fd86
- 说明：当前功能和路线图只代表核对日。
