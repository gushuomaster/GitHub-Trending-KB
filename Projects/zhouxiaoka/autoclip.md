---
type: github-project
repo: "zhouxiaoka/autoclip"
url: "https://github.com/zhouxiaoka/autoclip"
first_seen: 2026-09-22
last_seen: 2026-09-22
trending_count: 1
github_rank: 9
stars_today: 266
total_stars: 8169
language: "Python"
category: ["AI", "Video", "Creative Tools"]
tags: ["video-ai", "clipping", "highlights", "python", "creator-tools"]
topics: ["Video AI", "Content Creation", "Automation"]
status: active
documentation_checked_at: 2026-10-10
---
# zhouxiaoka/autoclip

## 一句话说明
把长视频自动转成适合抖音、小红书、TikTok、Reels、Shorts、Bilibili 与 YouTube 的短片、封面和发布文案。

## 它能做什么
- 从视频链接完成下载、语音转写、内容分析和本地视频渲染。
- 按目标平台的画幅和时长生成最多 10 个带评分的候选片段。
- 生成字幕、说话人跟踪、标题、描述、标签、封面与 ZIP 发布包。
- 提供桌面端、CLI 和 MCP，支持配置本地或云端转写与分析模型。
- 让用户在时间线中调整片段、字幕和样式后再导出。

## 怎么利用
在桌面端粘贴公开视频链接或通过 CLI/MCP 提交素材，选择目标平台、语言和片段数量；系统下载或读取视频，转写语音、分析主题和高光、重排为平台画幅，再在本地渲染短片并生成发布文案。用户在导出前复核版权、字幕、裁切与节奏。

## 实际例子
**官方典型工作流 → 输入 → 操作 → 输出：** 输入一段带字幕的访谈或播客链接，选择 Douyin 与 TikTok；AutoClip 分析谈话内容，提出最多 10 个带评分的高光，生成竖屏字幕视频、封面、标题、描述和标签；创作者在时间线修正人名与剪辑点后导出 ZIP 发布包。

## 关键命令
桌面用户可直接安装 Release；自托管或开发环境需要 Python 3.10+ 与 FFmpeg，也可使用项目提供的 Docker 流程。命令参数以 README 当前版本为准。

## 适合谁
需要把访谈、播客、直播或课程批量拆成多平台短视频的内容创作者、视频编辑和社交媒体运营团队。

## 局限 / 注意点
- 高光选择具有主观性，转写、说话人识别和镜头分析错误会直接影响成片。
- 云端分析可能发送字幕、文本、选定帧或音频，必须先核对隐私政策和敏感内容边界。
- 本地渲染需要 FFmpeg、磁盘和算力；云模型还会产生费用。
- 下载、二创与发布素材前必须取得版权或其他合法授权。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-22 | 9 | 266 | 8169 | 原日报保存的当日快照；Forks 未保存 |

## 相关主题
[[Topics/Video AI|Video AI]] · [[Topics/Content Creation|Content Creation]] · [[Topics/Automation|Automation]]

## 相关日报
- [[Daily/2026/09/2026-09-22|2026-09-22]]

## GitHub 原始链接
https://github.com/zhouxiaoka/autoclip
