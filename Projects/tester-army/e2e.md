---
type: github-project
repo: "tester-army/e2e"
first_seen: 2026-10-08
last_seen: 2026-10-08
language: "TypeScript"
total_stars: 7517
forks: 345
stars_today: null
---
# tester-army/e2e

## 一句话说明
Next generation e2e testing framework for web and mobile apps.

## 它能做什么
- 用自然语言描述用户目标，让 Agent 驱动 Web/移动 App 完成流程，再用 locator/assertion 验证结果，并可重放已记录动作减少模型调用。
- 可作为实际工作流中的独立工具或 Agent 能力使用。

## 怎么利用
用自然语言描述用户目标，让 Agent 驱动 Web/移动 App 完成流程，再用 locator/assertion 验证结果，并可重放已记录动作减少模型调用。

## 实际例子
场景：测试会员升级 Pro → `app.open('/settings/billing')` → `agent.act('upgrade ...')` → `agent.assert(...)` + 常规断言 → 输出可重复运行的 E2E 测试；初始化用 `npx e2e init`。

> 资料核对日期：2026-10-08。以上优先依据仓库 README/官方描述；若涉及工作流组合，则按项目已声明能力进行具体化，不视为额外官方承诺。

## 适合谁
需要解决上述问题的开发者、工程团队或自托管用户。

## 局限 / 注意点
仍在走向 1.0，API/配置可能变化；Agent 步骤依赖模型，外部 UI 变化仍会造成不稳定。

## Trending 历史
- 2026-10-08：#12

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/10/2026-10-08|2026-10-08]]

## GitHub
https://github.com/tester-army/e2e
