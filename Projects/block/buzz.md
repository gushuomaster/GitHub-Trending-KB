---
repo: "block/buzz"
url: "https://github.com/block/buzz"
first_seen: "2026-09-27"
last_seen: "2026-11-14"
trending_count: 2
github_rank: 8
stars_today: 97
total_stars: 37295
forks: 4940
language: "Rust"
metadata_checked_at: "2026-09-28T16:09:06+08:00"
snapshot_status: "live"
topics: ["Agent", "Collaboration", "Self-Hosted"]
status: active
type: github-project
fetched_at: "2026-11-14T08:06:26+08:00"
documentation_checked_at: "2026-11-14"
stats_as_of: "2026-11-14"
---
# block/buzz

## 一句话说明
让人类与 Agent 在自托管房间内协作，并把消息、补丁、审批和工作流记录成同一签名事件日志。

> 使用方式依据仓库当前 README 核对于 2026-09-28；这不代表历史上榜当日的 README 版本。

## 它能做什么
- 人类与 Agent 共享频道、仓库、补丁和审批
- 基于 Nostr relay 的签名事件与统一审计轨迹
- Agent 使用独立身份、频道成员资格和受控工作区

## 怎么利用
部署单社区 relay，先给 Agent 独立密钥和只读频道/仓库权限；验证问答和检索后，再逐步开放起草补丁、触发 CI 与请求审批。

## 实际例子
**官方场景：** 场景 → 让 Agent 分诊 Bug 而不给全局权限。输入 → 项目频道、Issue 和 Agent 身份。操作 → Agent 搜索历史、起草补丁并在同一房间请求 Review。输出 → 可追溯的问题、补丁、CI 和审批事件链。

## 适合谁
希望把 Agent 当作可审计团队成员、并掌控协作基础设施的研发组织。

## 局限 / 注意点
系统仍需维护 relay、身份密钥和租户边界；自托管不自动解决恶意输入、Agent 越权与模型成本。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-09-27 | 8 | 未保存 | 未保存 | 未保存 | archived_backfill |
| 2026-11-14 | 8 | 97 | 37295 | 4940 | GitHub Today live snapshot |

> 上表只保留归档可证明的日期与原始顺序；当前 Stars/Forks 仅记录在 frontmatter 的 `metadata_checked_at` 快照，不冒充历史数值。

## 相关主题
[[Topics/Agent|Agent]] · [[Topics/Collaboration|Collaboration]] · [[Topics/Self-Hosted|Self-Hosted]]

## 相关日报
- [[Daily/2026/09/2026-09-27|2026-09-27]]

- [[Daily/2026/11/2026-11-14|2026-11-14]]

## GitHub 原始链接
https://github.com/block/buzz

## 官方资料复核（2026-11-14）
- README：https://github.com/block/buzz/blob/HEAD/README.md
- README blob SHA：`de9636ece386b9b3c0492b062a85ddfa69e53124`
- 本次按当前官方资料复核并合并当天榜单事实；既有说明、案例、主题、风险与较早历史均保留。
- 当前仓库为仍受支持的 Buzz 0.X；Buzz 1.0 位于 `block/buzz-app`，其插件 API 仍为预览。
