---
type: github-project
repo: "XiaoYouChR/Ghost-Downloader-3"
url: "https://github.com/XiaoYouChR/Ghost-Downloader-3"
first_seen: "2026-11-20"
last_seen: "2026-11-25"
trending_count: 6
language: "Python"
total_stars: 17304
forks: 1050
stars_today: 1092
github_rank: 15
fetched_at: "2026-11-25T08:07:48+08:00"
documentation_checked_at: "2026-11-25"
stats_as_of: "2026-11-25"
snapshot_status: "live"
category: ["Downloader", "Media"]
topics: ["Downloader", "Media", "Desktop"]
---
# XiaoYouChR/Ghost-Downloader-3

## 一句话说明
Ghost Downloader 3 是跨平台多协议下载器，统一处理 HTTP、BT、FTP、M3U8、DASH、eD2k 以及 YouTube、Bilibili 和代码托管镜像。

## 它能做什么
- 用智能分块、带宽检测和任务恢复管理多协议下载。
- 通过浏览器扩展嗅探媒体并把登录状态交给桌面端。
- 提供 aria2 兼容 RPC 与 ghd CLI，可筛选种子文件并等待任务完成。

## 怎么利用
官方 CLI 场景：在设置中安装 `ghd`，先用 `ghd probe` 预览 torrent，再运行 `ghd add ... --select 0,3 -o ./downloads` 并用 `ghd wait <taskId>` 等待，输出选中文件和任务状态。

## 实际例子
**场景 → 输入 → 操作 → 输出：** 官方 CLI 场景：在设置中安装 `ghd`，先用 `ghd probe` 预览 torrent，再运行 `ghd add ... --select 0,3 -o ./downloads` 并用 `ghd wait <taskId>` 等待，输出选中文件和任务状态。

## 关键命令
```bash
ghd probe "https://example.com/a.torrent"
ghd add "https://example.com/a.torrent" --select 0,3 -o ./downloads
```

## 适合谁
需要在桌面或移动端统一管理多协议下载，并希望用 CLI/RPC 自动化任务的用户和开发者。

## 局限 / 注意点
必须确认素材版权和服务条款；Windows 10+、macOS 13+、glibc 2.35+ Linux 或 Android 9+ 才在官方范围，Qt 6.6+ 构建还要求 CPU 支持 AVX，Feature Packs API 尚在稳定中。

## Trending 历史


| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 证据说明 |
| --- | ---: | ---: | ---: | ---: | --- |
| 2026-11-20 | 15 | 341 | 12682 | 790 | GitHub Today live snapshot |
| 2026-11-21 | 15 | 1082 | 13681 | 838 | GitHub Today live snapshot |
| 2026-11-22 | 15 | 779 | 14430 | 876 | GitHub Today live snapshot |
| 2026-11-23 | 15 | 701 | 15116 | 909 | GitHub Today live snapshot |
| 2026-11-24 | 15 | 1087 | 16290 | 977 | GitHub Today live snapshot |
| 2026-11-25 | 15 | 1092 | 17304 | 1050 | GitHub Today live snapshot |

## 相关主题
[[Topics/Downloader|Downloader]] · [[Topics/Media|Media]] · [[Topics/Desktop|Desktop]]

## 相关日报


- [[Daily/2026/11/2026-11-20|2026-11-20]]
- [[Daily/2026/11/2026-11-21|2026-11-21]]
- [[Daily/2026/11/2026-11-22|2026-11-22]]
- [[Daily/2026/11/2026-11-23|2026-11-23]]
- [[Daily/2026/11/2026-11-24|2026-11-24]]
- [[Daily/2026/11/2026-11-25|2026-11-25]]

## GitHub 原始链接
https://github.com/XiaoYouChR/Ghost-Downloader-3

## 官方资料复核（2026-11-20）
- README：https://github.com/XiaoYouChR/Ghost-Downloader-3/blob/HEAD/README.md
- README blob SHA：`ed41411ade84757e41ba1bb5ccf64d24af61d3b0`
- 说明：项目卡反映核对日的当前官方资料与当天实时榜单事实。

## 最近变化
- 资料核对（2026-11-21）：重新读取当前官方 README；README blob SHA：`ed41411ade84757e41ba1bb5ccf64d24af61d3b0`。
- 资料核对（2026-11-23）：重新读取当前官方 README；下载协议、CLI 用法、平台要求与 AVX 边界未变，更新可复核版本证据；README blob SHA：`145a74e39835c776da130477039d2401e06f0dc9`。
- 资料核对（2026-11-24）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`392b405c0aa7e609ab4a7b3f16a228e3d7a66aab`。
- 资料核对（2026-11-25）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`392b405c0aa7e609ab4a7b3f16a228e3d7a66aab`。

