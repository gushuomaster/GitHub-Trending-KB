---
type: github-project
repo: "morluto/rea"
first_seen: 2026-10-08
last_seen: 2026-10-08
language: "TypeScript"
total_stars: 15841
forks: 1662
stars_today: 4655
github_rank: 1
trending_count: 2
fetched_at: "2026-10-08T10:41:00+08:00"
url: "https://github.com/morluto/rea"
---
# morluto/rea

## 一句话说明
让 Coding Agent 调查无源码应用、Electron 程序和原生二进制，给出功能实现机制、证据与分析边界。

**官方描述：** Reverse engineer anything with agents, from app behavior down to native binaries.

## 它能做什么
- 静态分析 JavaScript/Electron 目录或 ASAR，返回调用图、证据和未知项。
- 通过 Hopper、Ghidra 等已配置引擎检查原生函数、内存和反编译结果。
- 通过 MCP 或 CLI 将应用行为调查接入 Coding Agent。

此前能力说明：把应用、Electron/JavaScript 树或原生二进制交给 Agent 做证据化逆向分析。

## 怎么利用
在兼容性研究中输入已取得授权的应用目录，先做静态分析，再按需要选择原生分析引擎；Agent 根据证据解释目标功能，输出调查结果和未覆盖部分。

此前工作流说明：把应用、Electron/JavaScript 树或原生二进制交给 Agent 做证据化逆向分析。

## 实际例子
**官方终端入门 → 场景：** 检查提取后的 Electron 应用。**输入：** 应用目录或 ASAR。**操作：** 运行下面的静态分析命令。**输出：** JSON 中的 Evidence、恢复图、limitations 和 unknowns；无需执行目标应用。

```sh
npx -y rea-agents@latest analyze-javascript-application /absolute/path/to/app --json
```

**已有场景（可推导用法；具体命令及兼容性以本次核对为准）：**
场景：想复现一个闭源应用功能 → 输入应用或提取后的 Electron 目录 → 用 REA 的 MCP/CLI 分析行为、调用图和二进制证据 → 输出实现机制、证据与限制；静态 JS 可直接运行 `npx -y rea-agents@latest analyze-javascript-application <path> --json`。

> 资料核对日期：2026-10-08。以上优先依据仓库 README/官方描述；若涉及工作流组合，则按项目已声明能力进行具体化，不视为额外官方承诺。

## 适合谁
研究桌面应用兼容性、排查无源码行为或分析二进制的逆向工程师。

## 局限 / 注意点
需要合法获得分析目标；原生分析可能依赖 Hopper/Ghidra，结论仍需结合证据验证。

## Trending 历史
- 2026-10-07：#8 · Stars Today：未保存
- 2026-10-08：#1 · Stars Today：4655 · Total Stars：15841 · Forks：1662

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/10/2026-10-07|2026-10-07]]
- [[Daily/2026/10/2026-10-08|2026-10-08]]

## GitHub
https://github.com/morluto/rea

## 官方资料核对
- 核对日期：2026-10-08
- README：https://github.com/morluto/rea/blob/main/README.md
- README blob SHA：e02ce7e6c554805b571639e0673adff01324b075
