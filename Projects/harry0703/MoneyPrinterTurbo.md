---
repo: "harry0703/MoneyPrinterTurbo"
url: "https://github.com/harry0703/MoneyPrinterTurbo"
first_seen: 2026-10-01
last_seen: 2026-10-01
trending_count: 1
github_rank: 6
stars_today: 431
total_stars: 127543
forks: 19953
language: Python
fetched_at: "2026-10-01T07:59:50+08:00"
category: ["AI", "Video", "Automation"]
tags: ["short-video", "tts", "subtitles", "ffmpeg", "workflow"]
topics: ["AI", "Video-AI"]
status: active
---
# harry0703/MoneyPrinterTurbo

## 一句话说明
输入一个主题或关键词，自动完成脚本、素材、配音、字幕、配乐和剪辑，输出高清短视频。

## 它能做什么
- 提供 AI Agent、WebUI、API 与 CLI 四种入口。
- 可自动生成或改写多语言脚本，并接入多种模型、TTS、素材和视频服务。
- 支持自有图片/视频、库存素材、批量任务和任务历史。
- 用 FFmpeg 合成横屏、竖屏等成片并生成字幕。

## 怎么利用
用 Docker 或 uv 启动服务，在 WebUI 填写所需模型和素材 API Key；输入视频主题、时长、比例与语言，系统逐步生成文案、素材、旁白和字幕，最后合成 MP4，也可由 CLI/API 批处理。

## 实际例子
**官方示例 →** 生成“人工智能如何改变普通人的日常生活”短视频。 **输入 →** 主题、目标时长和视频比例。 **操作 →** 用 CLI 提交主题，工作流生成脚本、搜索素材、合成配音和字幕。 **输出 →** 可发布的本地 MP4 成片及中间素材。

    uv run python cli.py --video-subject "人工智能如何改变日常生活"
    docker compose -f docker-compose.release.yml up

## 适合谁
需要批量制作 Shorts、Reels、TikTok 或讲解视频的内容创作者与自动化团队。

## 局限 / 注意点
云端模型、TTS、素材与视频服务通常需要 API Key并产生费用；素材授权、事实准确性、配音许可和平台版权规则仍需自行核验。自动匹配素材和脚本的质量也需要人工审片。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-10-01 | 6 | +431 | 127543 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Video-AI|Video-AI]]

## 相关日报
- [[Daily/2026/10/2026-10-01|2026-10-01]]

