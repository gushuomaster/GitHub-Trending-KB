---
type: github-project
repo: "trycua/cua"
first_seen: 2026-09-20
last_seen: 2026-10-08
language: "Rust"
total_stars: 28790
forks: 2041
stars_today: 228
github_rank: 10
trending_count: 4
fetched_at: "2026-10-08T10:41:00+08:00"
url: "https://github.com/trycua/cua"
---
# trycua/cua

## 一句话说明
给 AI Agent 提供可操作的桌面、应用驱动和虚拟机环境，并提供电脑操作任务的评测与轨迹工具。

**官方描述：** Scale computer-use 2.0 with open-source drivers, cross-OS fleets, and benchmarks for training, evaluation, and data generation.

## 它能做什么
- Cua Driver 通过 CLI、MCP 或 SDK 检查和操作桌面应用与浏览器。
- Spaces 和 Lume 管理桌面与 Apple Silicon 上的本地虚拟机。
- Cua Bench 创建任务、评估 Agent 并导出执行轨迹。

此前能力说明：为 Computer-Use Agent 提供跨 macOS/Windows/Linux 的受控桌面环境、驱动和规模化评测/数据生成基础设施。

## 怎么利用
输入一个明确的 GUI 任务，先配置平台支持的 Driver 和必要权限，再连接 Agent；它检查应用状态并执行点击或输入，核对最终界面，输出任务结果。评测流程还可保存轨迹。

此前工作流说明：为 Computer-Use Agent 提供跨 macOS/Windows/Linux 的受控桌面环境、驱动和规模化评测/数据生成基础设施。

## 实际例子
**官方首个 Driver 结果 → 场景：** 操作计算器。**输入：** 计算 6 × 7 的任务。**操作：** 按 Driver quickstart 完成权限和 Agent 连接，让 Agent 在 Calculator 中计算并检查显示。**输出：** 可见结果 42；这是验证驱动和读回能力的最小案例。

**已有场景（可推导用法；具体命令及兼容性以本次核对为准）：**
场景：评测一个能操作 GUI 的 Agent → 启动隔离桌面/虚拟机 → 给 Agent 浏览器或桌面任务 → CUA 驱动执行点击键入并记录轨迹 → 输出任务结果和可用于评测/训练的数据。

> 资料核对日期：2026-10-08。以上优先依据仓库 README/官方描述；若涉及工作流组合，则按项目已声明能力进行具体化，不视为额外官方承诺。

## 适合谁
开发 GUI 自动化 Agent 或评测电脑操作模型的工程师。

## 局限 / 注意点
虚拟化和跨 OS 环境配置有成本；GUI 自动化仍会受页面变化、权限和外部服务影响。 Driver 各平台支持范围不同；Spaces 的 macOS 安装要求 macOS 26 或以上，Lume 本地虚拟机面向 Apple Silicon。

## Trending 历史
- 2026-09-20：#2 · Stars Today：383
- 2026-09-21：#7 · Stars Today：383
- 2026-09-22：#2 · Stars Today：609
- 2026-10-08：#10 · Stars Today：228 · Total Stars：28790 · Forks：2041

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/09/2026-09-20|2026-09-20]]
- [[Daily/2026/09/2026-09-21|2026-09-21]]
- [[Daily/2026/09/2026-09-22|2026-09-22]]
- [[Daily/2026/10/2026-10-08|2026-10-08]]

## GitHub
https://github.com/trycua/cua

## 官方资料核对
- 核对日期：2026-10-10
- README：https://github.com/trycua/cua/blob/main/README.md
- README blob SHA：b41015a8ae7a04205b25aec3ee432d8bf743e4e1


## 2026-09-20 历史核验
- GitHub Trending 原始排名：#2
- Stars Today：383
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/aeea175a90b86aba1844727221cf2aaa8decd908/archive/repository/2026/2026-09-20/(null).json)
- 归档提交时间：2026-09-20T00:53:39Z；该时间不是页面抓取时间。
