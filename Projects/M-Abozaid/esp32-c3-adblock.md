---
type: github-project
repo: M-Abozaid/esp32-c3-adblock
first_seen: '2026-10-06'
last_seen: '2026-10-06'
url: https://github.com/M-Abozaid/esp32-c3-adblock
trending_count: 1
github_rank: 13
documentation_checked_at: '2026-10-13'
stats_as_of: null
stars_today: null
total_stars: null
forks: null
language: null
---

# M-Abozaid/esp32-c3-adblock

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
在 ESP32-C3 上运行的 DNS 域名拦截器，把域名哈希存入 flash，降低对 RAM 和 PSRAM 的需求。

## 它能做什么
- 将域名转换为 40-bit 哈希，在 flash 中二分查找；命中返回 sinkhole 地址，未命中转发上游 DNS。
- 以 ESP32-C3 4MB flash、无 PSRAM 板为测试目标，支持 Web 配置与后续 Wi-Fi 更新。
- 固件、黑名单以及网络 OTA 使用对应配置和认证。

## 怎么利用
用当前 PlatformIO 构建；复制 `src/secrets.example.h` 并配置 Web/OTA 凭据，按 README 烧录固件、连接 Wi-Fi，将设备 IP 配为客户端或路由器 DNS，测试拦截及未拦截查询。

## 实际例子
**可推导用法 → 场景：** 给家中网络增加轻量 DNS 黑名单。**输入：** ESP32-C3、稳定 USB 供电、Wi-Fi 与黑名单。**操作：** 烧录并设置 DNS，在客户端查询黑名单域名和正常域名。**输出：** 命中域名被 sinkhole，其他请求转发至上游，需确认正常网站仍可访问。

## 适合谁
愿意烧录固件、配置家庭网络的硬件爱好者和嵌入式开发者。

## 局限 / 注意点
只能按 DNS 域名拦截，不能阻止所有同域广告或绕过本地 DNS 的流量；40-bit 哈希存在碰撞概率，供电与 Wi-Fi 质量会影响稳定性。Web/OTA 密码不可留空。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-06 | 13 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fb3bb70ad58f298d2e18bd46d2c445de3b27cc42/archive/repository/2026/2026-10-06/(null).json) |

## 相关日报
- [[Daily/2026/10/2026-10-06|2026-10-06]]

## GitHub 原始链接
https://github.com/M-Abozaid/esp32-c3-adblock

## 官方资料复核（2026-10-13）
- README：https://github.com/M-Abozaid/esp32-c3-adblock/blob/main/README.md
- README blob SHA：`33a999619ee188c2bea3460392cdc76f79dfa110`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。

## 相关主题
[[Topics/Edge-AI|Edge AI]] · [[Topics/Security|Security]] · [[Topics/Networking|Networking]]
