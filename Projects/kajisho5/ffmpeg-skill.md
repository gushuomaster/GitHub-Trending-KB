---
type: github-project
repo: "kajisho5/ffmpeg-skill"
url: "https://github.com/kajisho5/ffmpeg-skill"
first_seen: "2026-11-17"
last_seen: "2026-11-17"
trending_count: 1
language: "Python"
total_stars: 6675
forks: 599
stars_today: 367
github_rank: 14
fetched_at: "2026-11-17T08:06:19+08:00"
documentation_checked_at: "2026-11-17"
stats_as_of: "2026-11-17"
snapshot_status: "live"
category: ["Agent Skills", "Video Editing", "FFmpeg"]
topics: ["Agent-Skills", "Video", "FFmpeg"]
---
# kajisho5/ffmpeg-skill

## 一句话说明
ffmpeg-skill 给 Coding Agent 提供本地视频编辑工作流和 42 个受约束工具，让 Agent 用 FFmpeg 探测、剪辑、导出并验证媒体文件。

## 它能做什么
- 覆盖裁剪、拼接、静音删除、比例/时长适配、字幕、叠加、HDR 转 SDR、音频清理和批处理。
- 以 probe → 尽量无损编辑 → check → verify 的固定流程生成结构化 JSON 与可检查的媒体产物。
- 提供 Agent Skill、机器可读契约和 MCP 服务；默认暴露 12 个核心工具，也可调用全部 42 个。

## 怎么利用
官方示例：安装后让 Agent 把 16:9 视频改为 9:16、烧录字幕并按平台导出；工具先 probe 输入，调用 `fit.py`/`caption.py`，最后用 `check.py` 验证时长、分辨率和音量。

## 实际例子
**官方资料中的工作流 →** 官方示例：安装后让 Agent 把 16:9 视频改为 9:16、烧录字幕并按平台导出；工具先 probe 输入，调用 `fit.py`/`caption.py`，最后用 `check.py` 验证时长、分辨率和音量。

## 关键命令
```bash
npx ffmpeg-skill
npx ffmpeg-skill doctor
```

## 适合谁
希望让 Coding Agent 在本地批量剪辑、转码和验证视频/音频的内容生产者与自动化工程师。

## 局限 / 注意点
它不决定剪辑点、文案或是否可发布，也不自动跟踪人物或移除烧录水印；依赖本机 FFmpeg/Python，字幕、静音、HDR 和编码结果仍需人工观看检查。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-17 | 14 | 367 | 6675 | 599 | GitHub Today live snapshot |

## 相关主题
[[Topics/Agent-Skills|Agent-Skills]] · [[Topics/Video|Video]] · [[Topics/FFmpeg|FFmpeg]]

## 相关日报
- [[Daily/2026/11/2026-11-17|2026-11-17]]

## GitHub 原始链接
https://github.com/kajisho5/ffmpeg-skill

## 官方资料复核（2026-11-17）
- README：https://github.com/kajisho5/ffmpeg-skill/blob/HEAD/README.md
- README blob SHA：`c48bb935a49c45c9059676007ff894363a31cf87`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
