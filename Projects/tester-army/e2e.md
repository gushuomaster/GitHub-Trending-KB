---
type: github-project
repo: tester-army/e2e
first_seen: '2026-10-05'
last_seen: '2026-10-08'
language: TypeScript
total_stars: 7554
forks: 345
stars_today: 1390
github_rank: 12
trending_count: 4
fetched_at: '2026-10-08T10:41:00+08:00'
url: https://github.com/tester-army/e2e
documentation_checked_at: '2026-10-13'
stats_as_of: '2026-10-08'
---

# tester-army/e2e

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
用自然语言让 Agent 驱动 Web 或移动应用完成用户流程，再用定位器和断言验证结果。

## 它能做什么
- 在同一测试中组合自然语言动作、语义断言和常规定位器断言。
- 支持浏览器及 iOS/Android 模拟环境，并提供多种框架完整示例。
- 对经后续断言验证的 Agent 动作记录并重放，应用未变时减少模型调用。

## 怎么利用
输入测试环境、用户目标和预期状态，init 选择 web/mobile 引擎及模型 Provider；编写动作和断言并运行，输出通过/失败结果与可重放动作。无 Agent 步骤的测试无需模型。

## 实际例子
**官方 tests/checkout.e2e.ts → 场景：** 验证会员升级 Pro。**输入：** /settings/billing 测试页面。**操作：** app.open 打开账单，agent.act 请求升级，agent.assert 检查按比例费用，expect 检查 status 包含 Pro。**输出：** 对升级结果的可重复 E2E 验证。

```sh
npx e2e init
```

## 适合谁
给 Web 或移动应用编写用户流程回归测试的 QA 与应用工程师。

## 局限 / 注意点
仍在走向 1.0，API/配置可能变化；Agent 步骤依赖模型，外部 UI 变化仍会造成不稳定。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-05 | 1 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/25d857f152fee80260225fdeb6dc0460fb61c5b8/archive/repository/2026/2026-10-05/(null).json) |
| 2026-10-06 | 1 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fb3bb70ad58f298d2e18bd46d2c445de3b27cc42/archive/repository/2026/2026-10-06/(null).json) |
| 2026-10-07 | 1 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/7a58ec2d6aa31e161897e8b78805a6c3df276209/archive/repository/2026/2026-10-07/(null).json) |
| 2026-10-08 | 12 | 1390 | 7554 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/10/2026-10-05|2026-10-05]]
- [[Daily/2026/10/2026-10-06|2026-10-06]]
- [[Daily/2026/10/2026-10-07|2026-10-07]]
- [[Daily/2026/10/2026-10-08|2026-10-08]]

## GitHub 原始链接
https://github.com/tester-army/e2e

## 官方资料复核（2026-10-13）
- README：https://github.com/tester-army/e2e/blob/main/README.md
- README blob SHA：`a2a3190fdb33650989a5670af6dedf56bfc693e3`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。
