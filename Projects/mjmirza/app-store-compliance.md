---
type: github-project
repo: "mjmirza/app-store-compliance"
url: "https://github.com/mjmirza/app-store-compliance"
first_seen: "2026-11-20"
last_seen: "2026-11-21"
trending_count: 2
language: "Shell"
total_stars: 2722
forks: 173
stars_today: 869
github_rank: 12
fetched_at: "2026-11-21T08:10:09+08:00"
documentation_checked_at: "2026-11-21"
stats_as_of: "2026-11-21"
snapshot_status: "live"
category: ["Mobile", "Compliance"]
topics: ["Mobile", "Compliance", "Developer-Tools"]
---
# mjmirza/app-store-compliance

## 一句话说明
app-store-compliance 是面向 iOS 与 Android 上架前检查的开放手册和自动化 guard，把常见拒审模式、隐私声明和法规期限转成可执行诊断。

## 它能做什么
- 整理 117 类拒审模式、对应指南和修复建议。
- 扫描 Xcode、Android 或 Expo 项目并按严重度输出文件与行号。
- 检查隐私清单、Data Safety、演示账号及 95 个法规或平台期限。

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
规则会随 Apple、Google 与各地法律变化，扫描通过不等于一定过审或法律合规；安装到 Agent 工具会写入 Hook/Skill，Codex 还需在 `/hooks` 明确批准。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 证据说明 |
| --- | ---: | ---: | ---: | ---: | --- |
| 2026-11-20 | 12 | 377 | 1824 | 126 | GitHub Today live snapshot |
| 2026-11-21 | 12 | 869 | 2722 | 173 | GitHub Today live snapshot |

## 相关主题
[[Topics/Mobile|Mobile]] · [[Topics/Compliance|Compliance]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/11/2026-11-20|2026-11-20]]
- [[Daily/2026/11/2026-11-21|2026-11-21]]

## GitHub 原始链接
https://github.com/mjmirza/app-store-compliance

## 官方资料复核（2026-11-20）
- README：https://github.com/mjmirza/app-store-compliance/blob/HEAD/README.md
- README blob SHA：`63bdbd6b0bb7f11ff538727833e211e7c7135d7d`
- 说明：项目卡反映核对日的当前官方资料与当天实时榜单事实。
