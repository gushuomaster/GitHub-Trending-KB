---
repo: "Tencent/BrowserSkill"
first_seen: 2026-09-19
last_seen: 2026-09-21
recommend_score: 9.6
trending_count: 2
stars_today: 744
category: ["AI","Agent","Browser Automation"]
tags: ["github/agent","github/browser-automation","github/tencent","github/typescript"]
---
# Tencent/BrowserSkill
## 项目定位
让 Agent 使用用户真实登录态浏览器，同时尽量不打断前台工作的 CLI + 浏览器扩展。
## 核心功能 / 实现特点
TypeScript；真实会话复用、标签页控制、截图与页面交互。近期提交重点解决后台标签页 viewport/full-page screenshot，无需激活标签页。
## 主要优点
- 介于 headless browser 与抢占桌面的 computer-use 之间，适合需要真实账号态的自动化。
- 工程重点正在从“能控制浏览器”转向“不干扰用户地长期运行”。
## 最近变化
- 2026-09-19：+1319 stars。
- 2026-09-21：最近可验证日榜约 +744/day，热度回落但仍高；评分维持 9.6。
## 局限 / 注意点
登录态、Cookie 与扩展权限风险高；网站反自动化、DOM 变化与兼容性必须实测。
## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-19 | +1319 | 9.6 |
| 2026-09-21 | +744* | 9.6 |

\* 运行时采用最近可验证 Trending 快照。
## 相关主题
[[Agent]] · [[Browser-Automation]] · [[Developer-Tools]]
## 相关日报
- [[2026-09-19]]
- [[2026-09-21]]

## 怎么利用
在已登录的真实浏览器中给 Agent 暴露受控浏览能力，优先后台标签页执行查询、截图或表单读取，并为写操作增加人工确认。

## 实际例子
**可推导用法：** 场景 → 定期读取需要登录的运营后台。输入 → 已登录标签页和指标页面。操作 → Agent 在后台打开页面并提取昨日订单数。输出 → 不打断当前前台工作的结构化指标摘要。
