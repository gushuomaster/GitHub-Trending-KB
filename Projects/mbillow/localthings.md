---
type: github-project
repo: "mbillow/localthings"
url: "https://github.com/mbillow/localthings"
first_seen: "2026-11-08"
last_seen: "2026-11-08"
trending_count: 1
language: "Python"
total_stars: 1051
forks: 112
stars_today: 186
github_rank: 12
fetched_at: "2026-11-08T08:02:37+08:00"
documentation_checked_at: "2026-11-08"
stats_as_of: "2026-11-08"
snapshot_status: "live"
category: ["Home Assistant","IoT","Local Control"]
topics: ["Home-Assistant","IoT","Samsung"]
---
# mbillow/localthings

## 一句话说明
LocalThings 是 Home Assistant 集成，可在本地网络直接控制兼容的三星家电，不要求 Samsung 云账号持续在线。

## 它能做什么
- 通过 OCF、CoAP/DTLS 读取并控制洗衣机、空调、冰箱、烤箱等家电。
- 支持推送更新，不支持推送的设备每 30 秒轮询。
- 按设备能力自动创建控制项、传感器和诊断信息，并跟随 DHCP 地址变化。

## 怎么利用
在 HACS 下载 LocalThings、重启 Home Assistant，再到“设备与服务”添加集成并输入家电 IP；系统识别型号，创建对应控制与传感器。

## 实际例子
**官方安装场景 →** 在 HACS 下载 LocalThings、重启 Home Assistant，再到“设备与服务”添加集成并输入家电 IP；系统识别型号，创建对应控制与传感器。

## 关键命令
```bash
在 HACS 的 Integrations 中搜索并下载 LocalThings
```

## 适合谁
希望用 Home Assistant 在局域网控制兼容三星家电、减少云依赖的家庭自动化用户。

## 局限 / 注意点
主要支持约 2022 年后的机型，具体功能取决于设备实际暴露能力；首次添加设备会访问 Samsung 服务器读取公共标识，部分机型还需无法自动获取的预共享密钥。家电通常一次只接受一个本地连接。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-08 | 12 | 186 | 1051 | 112 | GitHub Today live snapshot |

## 相关主题
[[Topics/Home-Assistant|Home-Assistant]] · [[Topics/IoT|IoT]] · [[Topics/Samsung|Samsung]]

## 相关日报
- [[Daily/2026/11/2026-11-08|2026-11-08]]

## GitHub 原始链接
https://github.com/mbillow/localthings

## 官方资料复核（2026-11-08）
- README：https://github.com/mbillow/localthings/blob/HEAD/README.md
- README blob SHA：`50cad8f7d4a0c0e31ccbf5789c60b988b22113ad`
- 当天下午再次读取当前官方 README（项目版本已更新至 0.37.0）；局域网控制、首次联网、设备范围、轮询与单连接限制仍成立，榜单统计继续保留早晨同一次 GitHub Trending Any / Any / Today 页面采集。

