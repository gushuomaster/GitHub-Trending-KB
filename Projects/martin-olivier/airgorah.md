---
type: github-project
repo: "martin-olivier/airgorah"
url: "https://github.com/martin-olivier/airgorah"
first_seen: "2026-11-15"
last_seen: "2026-11-15"
trending_count: 1
language: "Rust"
total_stars: 5845
forks: 1024
stars_today: 270
github_rank: 15
fetched_at: "2026-11-15T08:07:59+08:00"
documentation_checked_at: "2026-11-15"
stats_as_of: "2026-11-15"
snapshot_status: "live"
category: ["Security","WiFi","Audit"]
topics: ["WiFi","Security","Rust"]
---
# martin-olivier/airgorah

## 一句话说明
Airgorah 是 Linux 上的 Wi‑Fi 安全审计图形工具，用于观察附近无线流量、识别接入点客户端，并在授权网络中测试握手与口令安全。

## 它能做什么
- 捕获附近 Wi‑Fi 流量并发现连接到接入点的客户端。
- 执行去认证测试并捕获 WPA 握手或 PMKID。
- 对已捕获的认证材料运行口令破解测试。
- 以 GTK4 图形界面运行，特权操作通过 `polkit` 启动独立 agent。

## 怎么利用
在自己拥有或明确获授权的测试网络中，使用支持 monitor mode 和 packet injection 的无线网卡；在 GUI 选择目标接入点和客户端，捕获握手/PMKID，再用自有测试字典评估口令强度，输出审计证据与整改建议。

## 实际例子
**可推导用法 →** 在自己拥有或明确获授权的测试网络中，使用支持 monitor mode 和 packet injection 的无线网卡；在 GUI 选择目标接入点和客户端，捕获握手/PMKID，再用自有测试字典评估口令强度，输出审计证据与整改建议。

## 适合谁
需要在合法授权范围内检查 Wi‑Fi 配置、客户端暴露面和 WPA 口令强度的无线网络管理员与安全测试人员。

## 局限 / 注意点
只支持 Linux，并要求支持监听模式和数据包注入的无线网卡；去认证、抓包和破解对非自有网络通常违法且会造成断网影响，只能在书面授权和隔离测试窗口内使用。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-15 | 15 | 270 | 5845 | 1024 | GitHub Today live snapshot |

## 相关主题
[[Topics/WiFi|WiFi]] · [[Topics/Security|Security]] · [[Topics/Rust|Rust]]

## 相关日报
- [[Daily/2026/11/2026-11-15|2026-11-15]]

## GitHub 原始链接
https://github.com/martin-olivier/airgorah

## 官方资料复核（2026-11-15）
- README：https://github.com/martin-olivier/airgorah/blob/HEAD/README.md
- README blob SHA：`67ed58ab731bc5e2f73b84039773d78adb1accd7`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
