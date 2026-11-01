---
type: github-project
repo: "vorssaint/vorssaint-utils"
url: "https://github.com/vorssaint/vorssaint-utils"
first_seen: "2026-11-01"
last_seen: "2026-11-01"
trending_count: 1
github_rank: 14
stars_today: 501
total_stars: 31887
forks: 1537
language: "Swift"
fetched_at: "2026-11-01T08:09:32+08:00"
documentation_checked_at: "2026-11-01"
stats_as_of: "2026-11-01"
snapshot_status: "live"
category: ["macOS", "Utilities", "Productivity"]
topics: ["macOS", "Menu-Bar", "Local-First", "Open-Source"]
status: active
---
# vorssaint/vorssaint-utils

## 一句话说明
把音量、系统监控、窗口管理、剪贴板、截图和文件工具集中到一个可按需安装功能的 macOS 菜单栏应用中。

## 它能做什么
- 提供按应用音量与输出切换、系统资源与温度监控、网络读数和告警。
- 提供应用/窗口切换器、窗口布局、Dock 预览、快捷键与鼠标增强。
- 提供剪贴板历史、文本片段、文件 Shelf、URL 清理、截图录屏和 OCR 等日常工具。
- 每项功能可单独安装、卸载和排序；本地优先，不要求账号，也不做分析或跟踪。

## 怎么利用
在 Apple Silicon、macOS 14 或更新系统上安装应用，只启用需要的功能；设置会说明每个权限的用途并列出依赖功能。启用后从同一个菜单栏面板调用音量、监控、窗口、剪贴板或截图工具，不使用的模块可卸载以停止加载。

## 实际例子
**官方功能 → 场景：** 会议时让音乐走扬声器、通话走耳机。**输入：** 两个正在播放音频的应用和两个输出设备。**操作：** 在 Volume mixer 中分别调整应用音量，并用 Per app output 指定输出。**输出：** 两类音频按应用走不同设备，无需额外音频驱动。

## 关键命令
~~~sh
git clone https://github.com/vorssaint/vorssaint-utils.git
cd vorssaint-utils
./build.sh --dev --install
~~~

## 适合谁
希望用一个开源、本地优先工具替代多个 macOS 菜单栏实用程序，并愿意按功能授予必要权限的 Apple Silicon Mac 用户。

## 局限 / 注意点
- 要求 Apple Silicon 与 macOS 14 Sonoma 或更新版本；源码构建还需要 Xcode Command Line Tools。
- 辅助功能、屏幕录制等权限会影响相应模块，虽然均可选，但关闭后部分功能不可用。
- README 明确提示麦克风静音不是隐私锁，Siri 或部分应用仍可能收到声音；Fan Control 也标为 beta，应谨慎使用。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-01 | 14 | 501 | 31887 | 1537 | GitHub Today live snapshot |

## 相关主题
[[Topics/macOS|macOS]] · [[Topics/Productivity|Productivity]] · [[Topics/Local-First|Local-First]]

## 相关日报
- [[Daily/2026/11/2026-11-01|2026-11-01]]

## GitHub 原始链接
https://github.com/vorssaint/vorssaint-utils

## 官方资料复核（2026-11-01）
- README：https://github.com/vorssaint/vorssaint-utils/blob/main/README.md
- README blob SHA：`fbdf6b52226cd0304e4d704951a1d896be782167`
