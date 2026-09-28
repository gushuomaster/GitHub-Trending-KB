---
repo: "bilawalsidhu/gods-eye-view"
first_seen: 2026-09-13
last_seen: 2026-09-14
recommend_score: 9.5
trending_count: 2
stars_today: 2898
category: ["Data", "Developer Tools", "OSINT"]
tags: ["github/data", "github/osint", "github/geospatial", "github/visualization", "github/javascript", "github/security"]
---

# bilawalsidhu/gods-eye-view

## 项目定位
浏览器里的 3D 空间情报/地理数据工作台，把多种真实开放数据源叠加到交互式地球上。

## 核心功能 / 实现特点
- JavaScript/Web 为主，整合地点、CCTV、地形、交通、共享出行、航空/船舶/卫星等多种 provider。
- 9 月 13 日密集拆分 CCTV、交通、卫星、火灾、地震、船舶、航班等 layer，并修复 GeoJSON toggle-off 只隐藏不释放的问题；实测 11,537 个实体释放后渲染和堆内存显著恢复。

## 主要优点
- 真实多源数据而非静态 Demo，provider 和数据生命周期治理参考价值高
- 近期不仅加功能，还持续做性能、内存、校验和组件所有权 hardening
- 今日热度继续上升且代码活跃度同步

## 局限 / 注意点
- 多数据源带来 API 稳定性、配额、延迟、数据质量和缓存策略复杂度
- 地理位置/CCTV 等数据涉及隐私与合规边界，必须按授权和当地法规使用

## 最近变化
- 连续第 2 天上榜：+2265 → +2898 stars。维护重点从 provider hardening 深入到 layer 生命周期、组件拆分和内存/渲染性能；评分 **9.3 → 9.5**。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-13 | +2265 | 9.3 |
| 2026-09-14 | +2898 | 9.5 |

## 相关主题
- [[Developer-Tools]]

## 相关日报
- [[2026-09-13]]
- [[2026-09-14]]

## 怎么利用
按任务启用少量地理数据 layer，把航班、船舶、火灾或交通等开放数据叠加到 3D 地球；记录来源、更新时间和使用权限。

## 实际例子
**可推导用法：** 场景 → 观察台风附近交通态势。输入 → 风暴区域、航班与船舶开放数据。操作 → 叠加对应 layer 并过滤时间窗口。输出 → 可交互的空间态势视图。
