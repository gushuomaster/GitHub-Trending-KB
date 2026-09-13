---
repo: "bilawalsidhu/gods-eye-view"
first_seen: 2026-09-13
last_seen: 2026-09-13
recommend_score: 9.3
trending_count: 1
stars_today: 2265
category: ["Data", "Developer Tools", "OSINT"]
tags: ["github/data", "github/osint", "github/geospatial", "github/visualization", "github/javascript", "github/security"]
---

# bilawalsidhu/gods-eye-view

## 项目定位
浏览器里的 3D 空间情报/地理数据工作台，把多种真实开放数据源叠加到交互式地球上。

## 核心功能 / 实现特点
- Web/JavaScript 为主，整合地点、CCTV、地形、共享出行等多种 provider。
- 仓库包含 `DATA_SOURCES.md`、`SECURITY.md`、`TESTING.md`，并将本地服务/provider 拆成独立模块。

## 主要优点
- 使用真实多源数据而非静态演示数据
- provider、数据源、安全与失败处理架构参考价值高
- 近期 hardening 密集，维护者持续处理超时、下载上限、校验等真实边界

## 局限 / 注意点
- 多数据源带来 API 稳定性、配额、延迟和数据质量复杂度
- 地理位置/CCTV 等数据涉及隐私与合规边界，必须按授权和当地法规使用

## 最近变化
- 首次上榜；今日 +2265 stars。9 月 12 日晚连续合并 CCTV/Places/GBFS hardening、terrain resilience 和服务模块拆分，热度与代码活跃度同时很高。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-13 | +2265 | 9.3 |

## 相关主题
- [[Developer-Tools]]

## 相关日报
- [[2026-09-13]]
