---
repo: "derv82/wifit3"
url: "https://github.com/derv82/wifit3"
first_seen: 2026-09-26
last_seen: 2026-09-26
trending_count: 1
github_rank: 9
stars_today: null
total_stars: 1432
forks: 118
language: "Python"
metadata_checked_at: "2026-09-28T16:09:06+08:00"
snapshot_status: archived_backfill
topics: ["Security", "Wireless"]
status: active
---
# derv82/wifit3

## 一句话说明
跨 Linux、Windows、macOS 的 USB Wi‑Fi 安全审计工具，内置无线栈并减少外部驱动依赖。

> 使用方式依据仓库当前 README 核对于 2026-09-28；这不代表历史上榜当日的 README 版本。

## 它能做什么
- 多 USB 网卡扫描、信号与加密识别
- 在授权环境捕获 WPA/WPA2 handshake、PMKID 等证据
- 导出 pcap/hc22000，并提供实时 Textual 面板

## 怎么利用
只在自有或书面授权网络中连接受支持 USB 适配器，先做被动侦察并限定目标 BSSID；如测试计划允许，再执行最小必要的主动验证并保存证据。

## 实际例子
**可推导用法：** 场景 → 验证实验室 AP 是否仍启用弱 WPS。输入 → 授权范围、目标 BSSID 和兼容 USB 网卡。操作 → 扫描并运行受控 WPS 检查。输出 → 带时间戳的检测记录与修复建议，不触碰范围外网络。

## 适合谁
需要跨平台无线安全评估的授权渗透测试人员和安全实验室。

## 局限 / 注意点
必须获得明确授权；主动去认证、Evil Twin、口令恢复等操作可能中断网络并违法，且需要特定 USB 芯片。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-09-26 | 9 | 未保存 | 未保存 | 未保存 | archived_backfill |

> 上表只保留归档可证明的日期与原始顺序；当前 Stars/Forks 仅记录在 frontmatter 的 `metadata_checked_at` 快照，不冒充历史数值。

## 相关主题
[[Topics/Security|Security]] · [[Topics/Wireless|Wireless]]

## 相关日报
- [[Daily/2026/09/2026-09-26|2026-09-26]]
