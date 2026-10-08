---
type: github-project
repo: "EpicGames/raddebugger"
first_seen: 2026-10-08
last_seen: 2026-10-08
language: "C"
total_stars: 7878
forks: 384
stars_today: null
---
# EpicGames/raddebugger

## 一句话说明
A native, user-mode, multi-process, graphical debugger.

## 它能做什么
- 在 Windows x64 上调试大型原生程序，并配合 RDI 调试信息格式和 RAD Linker 缩短大型工程链接/调试循环。
- 可作为实际工作流中的独立工具或 Agent 能力使用。

## 怎么利用
在 Windows x64 上调试大型原生程序，并配合 RDI 调试信息格式和 RAD Linker 缩短大型工程链接/调试循环。

## 实际例子
场景：大型 C/C++ 程序崩溃 → 用预编译 RAD Debugger 打开带 PDB 的本机 x64 程序 → 设置断点、检查线程/进程和调用状态 → 定位崩溃；大型工程还可尝试 RAD Linker 加快链接。

> 资料核对日期：2026-10-08。以上优先依据仓库 README/官方描述；若涉及工作流组合，则按项目已声明能力进行具体化，不视为额外官方承诺。

## 适合谁
需要解决上述问题的开发者、工程团队或自托管用户。

## 局限 / 注意点
Debugger 当前仍是 Alpha，主要支持本机 Windows x64 + PDB；Linux/DWARF 支持仍在规划/扩展中。

## Trending 历史
- 2026-10-08：#7

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/10/2026-10-08|2026-10-08]]

## GitHub
https://github.com/EpicGames/raddebugger
