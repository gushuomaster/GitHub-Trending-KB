---
repo: "averygan/reclip"
url: "https://github.com/averygan/reclip"
first_seen: 2026-09-30
last_seen: 2026-09-30
trending_count: 1
github_rank: 8
stars_today: 113
total_stars: 10078
forks: 1536
language: HTML
fetched_at: "2026-09-30T08:04:00+08:00"
category: ["Media", "Self-hosted"]
tags: ["video-downloader", "audio", "yt-dlp", "ffmpeg", "flask"]
topics: ["Video-AI"]
status: active
---
# averygan/reclip

## 一句话说明
提供一个极简自托管网页，把一个或多个公开视频链接转换为可下载的 MP4 视频或 MP3 音频。

## 它能做什么
- 借助 yt-dlp 支持 YouTube、TikTok、Instagram、X 等大量站点。
- 批量粘贴 URL、自动去重并读取标题与缩略图。
- 选择 MP4/MP3 以及可用的清晰度。
- 用单个 Flask 后端和原生 HTML/CSS/JS 运行，无前端构建步骤。

## 怎么利用
在个人电脑或可信服务器安装 yt-dlp 与 ffmpeg，启动 ReClip 后打开本地网页；粘贴自己拥有、已获授权或平台允许下载的链接，选择格式和分辨率，最后下载单个文件或整个批次。

## 实际例子
**官方使用流程 →** 批量保存自己发布的 5 段产品短视频。 **输入 →** 5 个公开视频 URL。 **操作 →** 将 URL 一次粘贴进页面，选择 MP4，Fetch 后为每条视频确认分辨率，再点击 Download All。 **输出 →** 去重后的 5 个本地 MP4 文件。

    docker build -t reclip .
    docker run -p 8899:8899 reclip

## 适合谁
需要保存自有公开视频、提取经授权音频或做个人媒体归档的内容创作者。

## 局限 / 注意点
站点支持依赖 yt-dlp，平台改版可能导致临时失效；项目没有用户、权限、队列隔离等团队级能力。仅应下载自己拥有、获授权或法律和平台条款允许的内容，不能用来规避 DRM、付费或版权限制。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-30 | 8 | +113 | 10078 |

## 相关主题
[[Topics/Video-AI|Video-AI]]

## 相关日报
- [[Daily/2026/09/2026-09-30|2026-09-30]]

