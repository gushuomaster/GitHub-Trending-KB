---
type: github-project
repo: "tester-army/e2e"
first_seen: 2026-10-08
last_seen: 2026-10-08
language: "TypeScript"
total_stars: 7554
forks: 345
stars_today: 1390
github_rank: 12
trending_count: 4
fetched_at: "2026-10-08T10:41:00+08:00"
url: "https://github.com/tester-army/e2e"
---
# tester-army/e2e

## 一句话说明
用自然语言让 Agent 驱动 Web 或移动应用完成用户流程，再用定位器和断言验证结果。

**官方描述：** Next generation e2e testing framework for web and mobile apps.

## 它能做什么
- 在同一测试中组合自然语言动作、语义断言和常规定位器断言。
- 支持浏览器及 iOS/Android 模拟环境，并提供多种框架完整示例。
- 对经后续断言验证的 Agent 动作记录并重放，应用未变时减少模型调用。

此前能力说明：用自然语言描述用户目标，让 Agent 驱动 Web/移动 App 完成流程，再用 locator/assertion 验证结果，并可重放已记录动作减少模型调用。

## 怎么利用
输入测试环境、用户目标和预期状态，init 选择 web/mobile 引擎及模型 Provider；编写动作和断言并运行，输出通过/失败结果与可重放动作。无 Agent 步骤的测试无需模型。

此前工作流说明：用自然语言描述用户目标，让 Agent 驱动 Web/移动 App 完成流程，再用 locator/assertion 验证结果，并可重放已记录动作减少模型调用。

## 实际例子
**官方 tests/checkout.e2e.ts → 场景：** 验证会员升级 Pro。**输入：** /settings/billing 测试页面。**操作：** app.open 打开账单，agent.act 请求升级，agent.assert 检查按比例费用，expect 检查 status 包含 Pro。**输出：** 对升级结果的可重复 E2E 验证。

```sh
npx e2e init
```

**已有场景（可推导用法；具体命令及兼容性以本次核对为准）：**
场景：测试会员升级 Pro → `app.open('/settings/billing')` → `agent.act('upgrade ...')` → `agent.assert(...)` + 常规断言 → 输出可重复运行的 E2E 测试；初始化用 `npx e2e init`。

> 资料核对日期：2026-10-08。以上优先依据仓库 README/官方描述；若涉及工作流组合，则按项目已声明能力进行具体化，不视为额外官方承诺。

## 适合谁
给 Web 或移动应用编写用户流程回归测试的 QA 与应用工程师。

## 局限 / 注意点
仍在走向 1.0，API/配置可能变化；Agent 步骤依赖模型，外部 UI 变化仍会造成不稳定。

## Trending 历史
- 2026-10-05：#1 · Stars Today：未保存
- 2026-10-06：#1 · Stars Today：未保存
- 2026-10-07：#1 · Stars Today：未保存
- 2026-10-08：#12 · Stars Today：1390 · Total Stars：7554 · Forks：345

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/10/2026-10-05|2026-10-05]]
- [[Daily/2026/10/2026-10-06|2026-10-06]]
- [[Daily/2026/10/2026-10-07|2026-10-07]]
- [[Daily/2026/10/2026-10-08|2026-10-08]]

## GitHub
https://github.com/tester-army/e2e

## 官方资料核对
- 核对日期：2026-10-08
- README：https://github.com/tester-army/e2e/blob/main/README.md
- README blob SHA：874dbfd09a6b1e17642cc931943f7b77eb5af177
