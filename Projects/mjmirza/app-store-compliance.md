---
type: github-project
repo: "mjmirza/app-store-compliance"
url: "https://github.com/mjmirza/app-store-compliance"
first_seen: "2026-11-20"
last_seen: "2026-11-27"
trending_count: 8
language: "Shell"
total_stars: 7020
forks: 468
stars_today: 562
github_rank: 12
fetched_at: "2026-11-27T08:10:28+08:00"
documentation_checked_at: "2026-11-27"
stats_as_of: "2026-11-27"
snapshot_status: "live"
category: ["Mobile", "Compliance"]
topics: ["Mobile", "Compliance", "Developer-Tools"]
---
# mjmirza/app-store-compliance

## 一句话说明
app-store-compliance 是面向 iOS 与 Android 上架前检查的开放手册和自动化 guard，把版本化规则包、代码扫描、人工就绪声明和法规期限转成可执行诊断。

## 它能做什么
- 用版本化 JSON 维护 Apple、Google 与 Web 规则、检测信号和修复建议；规则来源超过 60 天未核实时会提示 `Rule pack STALE`。
- 扫描 Xcode、Android 或 Expo 项目并按严重度输出文件与行号，覆盖隐私清单、权限、Data Safety、提交命令和预权限弹窗等风险。
- 通过 `.app-review-readiness.json` 记录演示账号、协议、商店声明等代码扫描无法证明的人工检查；`release-audit.py` 还会组合代码、商店元数据与就绪状态生成报告。
- 2026-11-27 核对时，`data/rejection-patterns.json` v2.5.3 实含 126 条模式、`data/regulatory-deadlines.json` 实含 117 条期限；Trending 页面摘要仍写 125 个模式，正文保留这项可复核差异。

## 怎么利用
官方只读检查：克隆仓库后运行 `app-store-compliance-guard.sh "/path/to/your/app"`；脚本扫描项目并输出 `BLOCKED`、`CLEAR` 或 `NOT CHECKED`，开发者按每条 `fix.` 建议修改后再次执行。

## 实际例子
**场景 → 输入 → 操作 → 输出：** 官方只读检查：克隆仓库后运行 `app-store-compliance-guard.sh "/path/to/your/app"`；脚本扫描项目并输出 `BLOCKED`、`CLEAR` 或 `NOT CHECKED`，开发者按每条 `fix.` 建议修改后再次执行。

## 关键命令
```bash
git clone https://github.com/mjmirza/app-store-compliance ~/repositories/app-store-compliance
bash ~/repositories/app-store-compliance/agent-os/hooks/app-store-compliance-guard.sh "/path/to/your/app"
```

## 适合谁
准备提交 iOS、Android 或 Expo 应用的移动开发者、发布负责人和合规审查人员。

## 局限 / 注意点
`CLEAR` 只表示代码里没有已检出的 critical 风险，不代表审核通过或法律合规；账号状态、协议、商店表单、真实后端及人工可用性仍需逐项确认。规则会变化，出现 `Rule pack STALE` 时应先更新再扫描；检测配方当前覆盖 126 个模式中的 115 个，其余商店列表与账号检查需人工完成。安装到 Agent 工具会写入 Hook/Skill，Codex 还需在 `/hooks` 明确批准。

## Trending 历史


| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 证据说明 |
| --- | ---: | ---: | ---: | ---: | --- |
| 2026-11-20 | 12 | 377 | 1824 | 126 | GitHub Today live snapshot |
| 2026-11-21 | 12 | 869 | 2722 | 173 | GitHub Today live snapshot |
| 2026-11-22 | 12 | 720 | 3388 | 213 | GitHub Today live snapshot |
| 2026-11-23 | 12 | 621 | 3963 | 236 | GitHub Today live snapshot |
| 2026-11-24 | 12 | 761 | 4947 | 314 | GitHub Today live snapshot |
| 2026-11-25 | 12 | 928 | 5843 | 378 | GitHub Today live snapshot |
| 2026-11-26 | 12 | 858 | 6,464 | 418 | GitHub Today live snapshot |
| 2026-11-27 | 12 | 562 | 7,020 | 468 | GitHub Today live snapshot |

## 相关主题
[[Topics/Mobile|Mobile]] · [[Topics/Compliance|Compliance]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报


- [[Daily/2026/11/2026-11-20|2026-11-20]]
- [[Daily/2026/11/2026-11-21|2026-11-21]]
- [[Daily/2026/11/2026-11-22|2026-11-22]]
- [[Daily/2026/11/2026-11-23|2026-11-23]]
- [[Daily/2026/11/2026-11-24|2026-11-24]]
- [[Daily/2026/11/2026-11-25|2026-11-25]]
- [[Daily/2026/11/2026-11-26|2026-11-26]]
- [[Daily/2026/11/2026-11-27|2026-11-27]]

## GitHub 原始链接
https://github.com/mjmirza/app-store-compliance

## 官方资料复核（2026-11-20）
- README：https://github.com/mjmirza/app-store-compliance/blob/HEAD/README.md
- README blob SHA：`63bdbd6b0bb7f11ff538727833e211e7c7135d7d`
- 说明：项目卡反映核对日的当前官方资料与当天实时榜单事实。

## 官方资料复核（2026-11-22）
- README：https://github.com/mjmirza/app-store-compliance/blob/HEAD/README.md
- README blob SHA：`12fd5ee6d940cd292f8d53adda7f7ff7584cfa5d`
- 规则包：`data/rejection-patterns.json` v2.5.0，核对日期 2026-11-21；法规数据库 v2.5.0，核对日期 2026-11-22，共 111 条记录。
- 午后 README 增加规则包新鲜度、`.app-review-readiness.json` 人工就绪声明和预权限 Allow 检查，并补入 Google Play trader status 与 EU AI Act 的最新期限说明；本次不改动早晨榜单、排名、统计或 `fetched_at`。

## 官方资料复核（2026-11-23）
- README：https://github.com/mjmirza/app-store-compliance/blob/HEAD/README.md
- README blob SHA：`7056ca8c29caaf88345c06e84c09a3e4a6311c92`
- 当前 GitHub 项目元数据已更新为 124 个拒审模式、112 条法规期限；README 仍明确 `CLEAR` 不保证审核通过、规则超过 60 天会提示 `Rule pack STALE`，据此同步项目卡数量与版本证据。

## 最近变化
- 资料核对（2026-11-24）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`7056ca8c29caaf88345c06e84c09a3e4a6311c92`。
- 资料核对（2026-11-25）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`7056ca8c29caaf88345c06e84c09a3e4a6311c92`。
- 资料核对（2026-11-26）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`7056ca8c29caaf88345c06e84c09a3e4a6311c92`。
- 资料核对（2026-11-27）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`d35d62a49db3b3755ba22c53a60817e87f2452db`。
