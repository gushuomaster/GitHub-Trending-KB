---
repo: "pbakaus/impeccable"
url: "https://github.com/pbakaus/impeccable"
first_seen: "2026-09-24"
last_seen: "2026-10-31"
trending_count: 14
github_rank: 3
stars_today: 2300
total_stars: 97029
forks: 5713
language: "Rust"
category:
- AI
- Design
- Skills
tags:
- design
- skill
- ui
- ai
topics:
- Skills
- Developer-Tools
- Design
status: active
type: "github-project"
stats_as_of: "2026-10-31"
documentation_checked_at: "2026-10-31"
fetched_at: "2026-10-31T08:05:14+08:00"
snapshot_status: "live"
---

# pbakaus/impeccable

> 功能和用法按 2026-10-28 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
给 AI coding/design harness 使用的设计语言与 Skill，让 Agent 能系统审查、精修和简化 UI，而不是只凭模糊的“做得更好看”。

## 它能做什么
- `/impeccable audit` 查找设计问题。
- `polish` 做最终视觉清理，`distill` 去除复杂度，`critique` 做完整设计评审。
- 可针对 header、checkout form 等具体区域运行。
- 当前 v2 将 24 个命令集中到一个 Skill，并用 62 条确定性检测规则补充 Agent 的主观判断。

## 怎么利用
在项目根目录执行 `npx impeccable install`，重启宿主后运行 `/impeccable init` 建立产品上下文；对页面或具体区域运行 audit、critique 和 polish，结合浏览器结果修改。

## 实际例子
**场景 →** 优化结账表单。 **操作 →** 输入 `/impeccable audit the checkout form`，修复后再 `/impeccable polish the checkout form`。 **结果 →** 得到问题清单及经 Agent 精修的表单实现。

## 适合谁
使用 Coding Agent 做前端/UI 的开发者和设计工程团队。

## 局限 / 注意点
设计判断仍带主观性；init 会写入 PRODUCT.md，视觉系统另记入 DESIGN.md，需避免把视觉偏好当成产品事实。带 hooks 的宿主可能需要确认项目 hook 信任。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-24 | 12 | 287 | 70270 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/169c712cc03b9441bbaea434526a0492147a090d/archive/repository/2026/2026-09-24/(null).json) |
| 2026-09-26 | 15 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/c05e32586dec23f91d75df4f0909a1727cebd8fc/archive/repository/2026/2026-09-26/(null).json) |
| 2026-10-02 | 14 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/95a8b5931135f4aef4bbc15dbb13ca4dc9319407/archive/repository/2026/2026-10-02/(null).json) |
| 2026-10-03 | 5 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/2c94a658b36f43039d6e2d707f4bc9f4746da107/archive/repository/2026/2026-10-03/(null).json) |
| 2026-10-04 | 2 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fe5095909e994262e6bf167a48b8035f8d07bb3b/archive/repository/2026/2026-10-04/(null).json) |
| 2026-10-05 | 2 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/25d857f152fee80260225fdeb6dc0460fb61c5b8/archive/repository/2026/2026-10-05/(null).json) |
| 2026-10-07 | 5 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/7a58ec2d6aa31e161897e8b78805a6c3df276209/archive/repository/2026/2026-10-07/(null).json) |
| 2026-10-25 | 6 | 619 | 86388 | GitHub Today live snapshot |
| 2026-10-26 | 4 | 1092 | 87666 | GitHub Today live snapshot |
| 2026-10-27 | 6 | 1506 | 89167 | GitHub Today live snapshot |
| 2026-10-28 | 5 | 1449 | 90475 | GitHub Today live snapshot |
| 2026-10-29 | 7 | 1472 | 92602 | GitHub Today live snapshot |
| 2026-10-30 | 3 | 2870 | 95275 | GitHub Today live snapshot |
| 2026-10-31 | 3 | 2300 | 97029 | GitHub Today live snapshot |

## 相关主题
[[Topics/Skills|Skills]] · [[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Design|Design]]

## 相关日报
- [[Daily/2026/09/2026-09-24|2026-09-24]]
- [[Daily/2026/09/2026-09-26|2026-09-26]]
- [[Daily/2026/10/2026-10-02|2026-10-02]]
- [[Daily/2026/10/2026-10-03|2026-10-03]]
- [[Daily/2026/10/2026-10-04|2026-10-04]]
- [[Daily/2026/10/2026-10-05|2026-10-05]]
- [[Daily/2026/10/2026-10-07|2026-10-07]]
- [[Daily/2026/10/2026-10-25|2026-10-25]]
- [[Daily/2026/10/2026-10-26|2026-10-26]]
- [[Daily/2026/10/2026-10-27|2026-10-27]]
- [[Daily/2026/10/2026-10-28|2026-10-28]]
- [[Daily/2026/10/2026-10-29|2026-10-29]]
- [[Daily/2026/10/2026-10-30|2026-10-30]]

- [[Daily/2026/10/2026-10-31|2026-10-31]]
## GitHub 原始链接
https://github.com/pbakaus/impeccable

## 官方资料复核（2026-10-31）
- README：https://github.com/pbakaus/impeccable/blob/main/README.md
- README blob SHA：`8f27aa965cb56ab578d637e53f0392ae4e2d06db`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。
