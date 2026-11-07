---
type: github-project
repo: "openssl/openssl"
url: "https://github.com/openssl/openssl"
first_seen: "2026-11-07"
last_seen: "2026-11-07"
trending_count: 1
language: "C"
total_stars: 31283
forks: 11580
stars_today: 26
github_rank: 14
fetched_at: "2026-11-07T08:04:42+08:00"
documentation_checked_at: "2026-11-07"
stats_as_of: "2026-11-07"
snapshot_status: "live"
category: ["TLS", "Cryptography", "Security"]
topics: ["TLS", "Cryptography", "Security"]
---
# openssl/openssl

## 一句话说明
OpenSSL 提供 TLS、DTLS、QUIC 协议实现、通用密码库和命令行工具，用于安全通信、证书与加密操作。

## 它能做什么
- libssl 实现 TLS 1.3、DTLS 1.3 和 QUIC v1 等安全传输协议。
- libcrypto 提供对称/非对称加密、摘要、签名和密钥等密码原语。
- 命令行工具可生成证书请求、检查连接、转换证书并计算摘要。

## 怎么利用
如果要排查 HTTPS 服务证书链，可用 `openssl s_client` 连接目标 443 端口并显示服务器证书和握手信息，运维人员据此检查过期、链路和协议问题。

## 实际例子
**官方资料支持的场景 →** 如果要排查 HTTPS 服务证书链，可用 `openssl s_client` 连接目标 443 端口并显示服务器证书和握手信息，运维人员据此检查过期、链路和协议问题。

## 关键命令
```bash
openssl s_client -connect example.com:443 -servername example.com
```

## 适合谁
实现 TLS 通信、PKI、证书运维和底层密码能力的系统开发者、安全工程师与平台团队。

## 局限 / 注意点
密码算法和协议参数配置不当会造成严重安全问题；应用应优先使用高层安全库与受支持版本，构建时还需按平台文档配置依赖和 FIPS 要求。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-07 | 14 | 26 | 31283 | 11580 | GitHub Today live snapshot |

## 相关主题
[[Topics/TLS|TLS]] · [[Topics/Cryptography|Cryptography]] · [[Topics/Security|Security]]

## 相关日报
- [[Daily/2026/11/2026-11-07|2026-11-07]]

## GitHub 原始链接
https://github.com/openssl/openssl

## 官方资料复核（2026-11-07）
- README：https://github.com/openssl/openssl/blob/HEAD/README.md
- README blob SHA：`0bf1bac461f8ba07feb28961bdc359deadc40251`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
