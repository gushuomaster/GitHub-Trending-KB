---
type: github-project
repo: "EpicGames/raddebugger"
first_seen: 2026-10-08
last_seen: 2026-10-09
language: "C"
total_stars: 8101
forks: 391
stars_today: 279
github_rank: 6
trending_count: 2
fetched_at: "2026-10-09T08:09:00+08:00"
url: "https://github.com/EpicGames/raddebugger"
---
# EpicGames/raddebugger

## 一句话说明
为本机 Windows x64 原生程序提供图形调试，并用自有调试信息格式与链接器改善大型工程的编译调试流程。

**官方描述：** A native, user-mode, multi-process, graphical debugger.

## 它能做什么
- 对本机 Windows x64 程序进行用户态、多进程图形调试。
- 把 PDB 按需转换为 RDI 调试信息，并可导出文本内容。
- RAD Linker 生成 x64 PE/COFF，可生成 PDB 或 RDI。


## 怎么利用
输入带匹配 PDB 的程序及复现步骤，在发布版调试器中启动目标并检查执行状态；大工程可另行评估 RAD Linker，输出问题定位和调试信息。使用细节见发行包随附 README。


## 实际例子
**可推导用法 → 场景：** 排查 Windows C++ 程序崩溃。**输入：** 可执行文件、匹配 PDB 和崩溃复现步骤。**操作：** 在 RAD Debugger 重现并检查停下时的调用状态。**输出：** 可用于定位代码的调试线索；根 README 仅为技术概览，不能替代发行包使用说明。

**已有场景（可推导用法；具体命令及兼容性以本次核对为准）：**
场景：大型 C/C++ 程序崩溃 → 用预编译 RAD Debugger 打开带 PDB 的本机 x64 程序 → 设置断点、检查线程/进程和调用状态 → 定位崩溃；大型工程还可尝试 RAD Linker 加快链接。

> 资料核对日期：2026-10-09。以上优先依据仓库 README/官方描述；若涉及工作流组合，则按项目已声明能力进行具体化，不视为额外官方承诺。

## 适合谁
调试 Windows 原生程序、维护大型 C/C++ 工程的开发者。

## 局限 / 注意点
Debugger 当前仍是 Alpha，主要支持本机 Windows x64 + PDB；Linux/DWARF 支持仍在规划/扩展中。

## Trending 历史
- 2026-10-08：#7 · Stars Today：90 · Total Stars：7888 · Forks：384
- 2026-10-09：#6 · Stars Today：279 · Total Stars：8101 · Forks：391

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/10/2026-10-08|2026-10-08]]
- [[Daily/2026/10/2026-10-09|2026-10-09]]

## GitHub
https://github.com/EpicGames/raddebugger

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/EpicGames/raddebugger/blob/master/README.md
- README blob SHA：05403355908aa9765b226055831976999daa2db6

