---
repo: "openbao/openbao"
url: "https://github.com/openbao/openbao"
first_seen: 2026-09-26
last_seen: 2026-09-27
trending_count: 2
github_rank: 7
stars_today: null
total_stars: 8155
forks: 596
language: "Go"
metadata_checked_at: "2026-09-28T16:09:06+08:00"
snapshot_status: archived_backfill
topics: ["Security", "Infrastructure", "Secrets"]
status: active
---
# openbao/openbao

## 一句话说明
由开放治理社区维护的 secrets、证书和密钥集中管理系统。

> 使用方式依据仓库当前 README 核对于 2026-09-28；这不代表历史上榜当日的 README 版本。

## 它能做什么
- 集中存储并按策略分发数据库凭据、API Key、证书与加密密钥
- 支持动态凭据、租约、轮换和审计
- 提供 API/CLI，适合应用与基础设施自动取密

## 怎么利用
先部署高可用测试集群与存储后端，启用 TLS 和审计；为每个应用建立最小权限 policy 与独立 auth method，再逐步把静态密钥迁为动态或短租约凭据。

## 实际例子
**可推导用法：** 场景 → 给 CI 临时数据库权限。输入 → CI 身份、数据库角色和 30 分钟 TTL。操作 → CI 向 OpenBao 认证并领取动态凭据。输出 → 自动过期的数据库账号和审计记录，避免长期密码写入仓库。

## 适合谁
需要集中 secrets 管理、PKI 或密钥生命周期治理的平台与安全团队。

## 局限 / 注意点
密钥系统自身是高价值目标；必须规划解封、备份、升级、审计与灾难恢复，错误 policy 会扩大权限。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-09-26 | 16 | 未保存 | 未保存 | 未保存 | archived_backfill |
| 2026-09-27 | 7 | 未保存 | 未保存 | 未保存 | archived_backfill |

> 上表只保留归档可证明的日期与原始顺序；当前 Stars/Forks 仅记录在 frontmatter 的 `metadata_checked_at` 快照，不冒充历史数值。

## 相关主题
[[Topics/Security|Security]] · [[Topics/Infrastructure|Infrastructure]] · [[Topics/Secrets|Secrets]]

## 相关日报
- [[Daily/2026/09/2026-09-26|2026-09-26]]
- [[Daily/2026/09/2026-09-27|2026-09-27]]
