---
type: github-project
repo: "dani-garcia/vaultwarden"
url: "https://github.com/dani-garcia/vaultwarden"
first_seen: 2026-09-15
last_seen: 2026-09-15
trending_count: 1
category: ["Password Manager","Self-hosted","Security"]
topics: ["Password Manager","Self-hosted","Security"]
---
# dani-garcia/vaultwarden

## 一句话说明
用较轻量的 Rust 服务端实现 Bitwarden Client API，让官方 Bitwarden 客户端连接自托管密码库。

## 它能做什么
- 提供个人密码库、附件、Send 和组织共享
- 支持 TOTP、WebAuthn、YubiKey、Duo 等多因素认证
- 兼容官方浏览器、桌面和移动客户端
- 提供管理后台、事件日志、策略和目录同步能力

## 怎么利用
官方推荐流程：使用容器部署 Vaultwarden，配置持久卷、域名和反向代理 HTTPS，再让官方 Bitwarden 客户端把服务器 URL 指向自托管实例。

## 实际例子
**官方材料中的工作流：** 官方推荐流程：使用容器部署 Vaultwarden，配置持久卷、域名和反向代理 HTTPS，再让官方 Bitwarden 客户端把服务器 URL 指向自托管实例。

## 适合谁
愿意自行维护高安全服务、需要兼容 Bitwarden 客户端的家庭或小团队。

## 局限 / 注意点
- 这是非官方兼容实现，问题应向 Vaultwarden 报告；密码库属于高价值系统，必须配置 HTTPS、备份、更新、强管理令牌和最小暴露面。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-15 | 10 | 未保存 | 未保存 | 日期匹配来源 |

## 相关主题
[[Topics/Password Manager|Password Manager]] · [[Topics/Self-hosted|Self-hosted]] · [[Topics/Security|Security]]

## 相关日报
- [[Daily/2026/09/2026-09-15|2026-09-15]]

## GitHub 原始链接
https://github.com/dani-garcia/vaultwarden

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/dani-garcia/vaultwarden/blob/HEAD/README.md
- 说明：项目卡反映核对日的当前官方资料，不声称这些能力与历史上榜日的项目版本完全相同。
