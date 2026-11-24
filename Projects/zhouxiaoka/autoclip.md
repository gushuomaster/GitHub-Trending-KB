---
forks: 2205
fetched_at: "2026-11-24T08:07:17+08:00"
stats_as_of: "2026-11-24"
type: github-project
repo: "zhouxiaoka/autoclip"
url: "https://github.com/zhouxiaoka/autoclip"
first_seen: "2026-09-22"
last_seen: "2026-11-24"
trending_count: 6
github_rank: 16
stars_today: 907
total_stars: 14370
language: "Python"
category: ["AI", "Video", "Creative Tools"]
tags: ["video-ai", "clipping", "highlights", "python", "creator-tools"]
topics: ["Video AI", "Content Creation", "Automation"]
status: active
documentation_checked_at: "2026-11-24"
snapshot_status: "live"
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
```bash
autoclip --version
autoclip produce talk.mp4 --srt talk.srt --platform douyin --portrait-style podcast --json
autoclip outputs PROJECT_ID --export-kits
```

## 适合谁
需要把访谈、播客、直播或课程批量拆成多平台短视频的内容创作者、视频编辑和社交媒体运营团队。

## 局限 / 注意点
- 高光选择具有主观性，转写、说话人识别和镜头分析错误会直接影响成片。
- 云端分析可能发送字幕、文本、选定帧或音频，必须先核对隐私政策和敏感内容边界。
- 本地渲染需要 FFmpeg、磁盘和算力；云模型还会产生费用。
- 桌面安装包当前没有代码签名或 Apple 公证，可能触发 SmartScreen、Gatekeeper 或杀毒软件提示；可用 Release 附带的 `build-provenance.json` 核对 SHA-256，或改用 Docker / 源码运行。
- 下载、二创与发布素材前必须取得版权或其他合法授权。

## Trending 历史


| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 证据说明 |
|---|---:|---:|---:|---:|---|
| 2026-09-22 | 9 | 266 | 8169 | 未保存 | 原日报保存的当日快照 |
| 2026-11-20 | 16 | 126 | 11198 | 1937 | GitHub Today live snapshot |
| 2026-11-21 | 16 | 979 | 12167 | 2011 | GitHub Today live snapshot |
| 2026-11-22 | 16 | 683 | 12836 | 2072 | GitHub Today live snapshot |
| 2026-11-23 | 16 | 641 | 13414 | 2124 | GitHub Today live snapshot |
| 2026-11-24 | 16 | 907 | 14370 | 2205 | GitHub Today live snapshot |

## 相关主题
[[Topics/Video AI|Video AI]] · [[Topics/Content Creation|Content Creation]] · [[Topics/Automation|Automation]]

## 相关日报


- [[Daily/2026/09/2026-09-22|2026-09-22]]

- [[Daily/2026/11/2026-11-20|2026-11-20]]
- [[Daily/2026/11/2026-11-21|2026-11-21]]
- [[Daily/2026/11/2026-11-22|2026-11-22]]
- [[Daily/2026/11/2026-11-23|2026-11-23]]
- [[Daily/2026/11/2026-11-24|2026-11-24]]

## GitHub 原始链接
https://github.com/zhouxiaoka/autoclip

## 官方资料复核（2026-11-20）
- README：https://github.com/zhouxiaoka/autoclip/blob/HEAD/README.md
- README blob SHA：`ce3835ea3720322b545edfffce85a193196b353c`
- 本次按当前官方 README 复核并合并当天榜单事实；保留既有说明、案例、分类、主题、风险与较早历史。

## 官方资料复核（2026-11-23）
- README：https://github.com/zhouxiaoka/autoclip/blob/HEAD/README.md
- README blob SHA：`a92b520b22d36decd5106f22edccfbbb0a0e32e2`
- 当前 README 明确 CLI/MCP 与桌面共用一键出片链路，并将 MCP 新入口写为 `start_quick_output` / `get_quick_output_status`；补入官方最小 CLI 命令、未签名安装包与 SHA-256 来源核验边界，并更新版本证据。

## 最近变化
- 资料核对（2026-11-24）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`7f6333fa7b0fc637972f3ff556c6bc883e070e32`。
