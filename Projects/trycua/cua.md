---
repo: "trycua/cua"
url: "https://github.com/trycua/cua"
first_seen: 2026-09-20
last_seen: 2026-09-22
trending_count: 2
github_rank: 2
stars_today: 609
total_stars: 25646
language: HTML
category: ["AI","Agent","Computer Use","Developer Tools"]
tags: ["agent","computer-use","automation","sandbox"]
topics: ["Agent","Browser-Automation","Developer-Tools"]
status: active
---
# trycua/cua
## 项目定位
Computer-Use 2.0 基础设施：跨 OS 驱动、隔离环境、Fleet 与 benchmark。
## 核心功能 / 实现特点
桌面/浏览器控制、macOS/Linux/Windows 驱动、Sandbox/Fleet、OSWorld 评测与数据生成；权限模式、登录态浏览器、bounded autonomy 和跨 OS Driver 持续工程化。
## 最近变化 / Evolution
- 2026-09-20 首次上榜：+383 stars，总星约 24.3k。
- 2026-09-22 再次升至 GitHub Trending #2，+609 stars，总星 25,646；单日热度较首次记录约提升 59%，属于有意义热度变化。
## 局限 / 注意点
跨 OS 行为差异、Wayland/AT-SPI、长操作超时、OIDC 刷新等问题仍多；高权限 computer-use 必须严格隔离。
## Trending History
| 日期 | GitHub Rank | Stars Today | Total Stars | Event |
|---|---:|---:|---:|---|
| 2026-09-20 | - | +383 | ~24300 | NEW |
| 2026-09-22 | 2 | +609 | 25646 | CHANGED |
## 相关主题
[[Agent]] · [[Browser-Automation]] · [[Developer-Tools]]
## 相关日报
- [[2026-09-20]]
- [[2026-09-22]]

## 怎么利用
在隔离桌面或浏览器环境中运行 computer-use Agent，用 Driver执行点击、输入和截图，并通过 Fleet 管理多实例、用 benchmark 评估成功率。

## 实际例子
**可推导用法：** 场景 → 测试跨浏览器报销流程。输入 → 测试账号和表单任务。操作 → Agent在 sandbox 填写但不提交，记录截图。输出 → 步骤轨迹、失败点和 benchmark 结果。
