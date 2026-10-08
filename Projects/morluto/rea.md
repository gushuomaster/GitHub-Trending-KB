---
type: github-project
repo: "morluto/rea"
first_seen: 2026-10-08
last_seen: 2026-10-08
language: "TypeScript"
total_stars: 15576
forks: 1625
stars_today: null
---
# morluto/rea

## 一句话说明
Reverse engineer anything with agents, from app behavior down to native binaries.

## 它能做什么
- 把应用、Electron/JavaScript 树或原生二进制交给 Agent 做证据化逆向分析。
- 可作为实际工作流中的独立工具或 Agent 能力使用。

## 怎么利用
把应用、Electron/JavaScript 树或原生二进制交给 Agent 做证据化逆向分析。

## 实际例子
场景：想复现一个闭源应用功能 → 输入应用或提取后的 Electron 目录 → 用 REA 的 MCP/CLI 分析行为、调用图和二进制证据 → 输出实现机制、证据与限制；静态 JS 可直接运行 `npx -y rea-agents@latest analyze-javascript-application <path> --json`。

> 资料核对日期：2026-10-08。以上优先依据仓库 README/官方描述；若涉及工作流组合，则按项目已声明能力进行具体化，不视为额外官方承诺。

## 适合谁
需要解决上述问题的开发者、工程团队或自托管用户。

## 局限 / 注意点
需要合法获得分析目标；原生分析可能依赖 Hopper/Ghidra，结论仍需结合证据验证。

## Trending 历史
- 2026-10-08：#1

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/10/2026-10-08|2026-10-08]]

## GitHub
https://github.com/morluto/rea
