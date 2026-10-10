---
type: github-project
repo: "boykopovar/AnyPS5"
first_seen: 2026-10-06
last_seen: 2026-10-10
language: "C++"
total_stars: 22226
forks: 1811
stars_today: 5868
github_rank: 2
trending_count: 5
fetched_at: "2026-10-10T08:02:00+08:00"
url: "https://github.com/boykopovar/AnyPS5"
---
# boykopovar/AnyPS5

## 一句话说明
将合法取得的 PS5 可执行文件重链接成 Linux 或 Windows 原生格式，并提供兼容系统库供其运行。

**官方描述：** Tool for automatic PS5 executables porting to Linux and Windows

## 它能做什么
- 将输入 ELF 转换为 Linux ELF 或 Windows PE，并转换配套模块。
- 提供可动态链接的系统 PRX 库实现。
- 将支持的着色器重编译为 SPIR-V，并支持手柄与可配置键鼠输入。


## 怎么利用
输入干净的 ELF 及其随附模块，按 Usage 放置 sce_module 等目录；用 relinker 选择目标系统，把对应系统库放入 libs、资源放入 app0，输出目标可执行文件并检验兼容性。


## 实际例子
**官方 Usage → 场景：** 转换 Windows 目标。**输入：** source/input.elf 与旁边的配套模块目录。**操作：** 执行 --windows 转换，再按 Runtime layout 配置 libs 和 app0。**输出：** app.exe；能否运行取决于兼容库覆盖。README 报告 Dreaming Sarah 已验证运行。

```sh
relinker --windows source/input.elf app.exe
```

**已有场景（可推导用法；具体命令及兼容性以本次核对为准）：**
场景：兼容性研究 → 输入自己合法取得的 PS5 可执行文件 → 按官方 Usage 配置 AnyPS5 → relinker 转换目标格式并用兼容库运行 → 输出可在 PC 上启动的兼容版本；官方列出 Dreaming Sarah 已验证运行。

> 资料核对日期：2026-10-10。以上优先依据仓库 README/官方描述；若涉及工作流组合，则按项目已声明能力进行具体化，不视为额外官方承诺。

## 适合谁
研究游戏保存、平台互操作和可执行程序兼容性的开发者。

## 局限 / 注意点
项目仍在兼容性建设中，并非所有游戏/系统调用都支持；不提供固件、密钥或版权软件。

## Trending 历史
- 2026-10-06：#5 · Stars Today：未保存
- 2026-10-07：#4 · Stars Today：未保存
- 2026-10-08：#3 · Stars Today：2716 · Total Stars：10857 · Forks：826
- 2026-10-09：#1 · Stars Today：4669 · Total Stars：15634 · Forks：1234
- 2026-10-10：#2 · Stars Today：5868 · Total Stars：22226 · Forks：1811

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/10/2026-10-06|2026-10-06]]
- [[Daily/2026/10/2026-10-07|2026-10-07]]
- [[Daily/2026/10/2026-10-08|2026-10-08]]
- [[Daily/2026/10/2026-10-09|2026-10-09]]
- [[Daily/2026/10/2026-10-10|2026-10-10]]

## GitHub
https://github.com/boykopovar/AnyPS5

## 官方资料核对
- 核对日期：2026-10-10
- README：https://github.com/boykopovar/AnyPS5/blob/main/README.md
- README blob SHA：5e57cb94ff24c133317861bad76ac6b8dd83a55b
