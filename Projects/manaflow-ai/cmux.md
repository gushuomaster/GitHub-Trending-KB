---
type: github-project
repo: "manaflow-ai/cmux"
first_seen: 2026-10-08
last_seen: 2026-10-08
language: "Swift"
total_stars: 27880
forks: 2463
stars_today: 44
github_rank: 9
trending_count: 1
fetched_at: "2026-10-08T10:41:00+08:00"
url: "https://github.com/manaflow-ai/cmux"
---
# manaflow-ai/cmux

## 一句话说明
在 macOS 终端中集中管理多个 Coding Agent 会话，显示工作区状态并提示哪一个任务正在等待输入。

**官方描述：** Open source Ghostty-based macOS terminal with vertical tabs and notifications for AI coding agents. Built for multitasking, organization, and programmability.

## 它能做什么
- 用垂直标签和分屏显示 Git 分支、PR、目录、端口及通知。
- 在等待操作时高亮窗格，并汇总未读通知。
- 将可脚本操作的浏览器放在终端旁，或通过 SSH 创建远程工作区。

此前能力说明：在 macOS 里并行管理多个 Claude Code/Codex 等终端 Agent，会显示工作区、Git 分支、PR、端口和等待通知。

## 怎么利用
输入多个项目目录和 Agent 会话，在独立工作区或窗格运行任务；接入通知 hooks 后按通知切换，输出可统一跟进的任务界面。需要调试网页时在旁边打开开发服务。

此前工作流说明：在 macOS 里并行管理多个 Claude Code/Codex 等终端 Agent，会显示工作区、Git 分支、PR、端口和等待通知。

## 实际例子
**官方 SSH 示例 → 场景：** 管理远程机器上的终端任务。**输入：** 可访问的 SSH 目标。**操作：** 运行 cmux ssh user@remote 创建远程工作区；浏览器窗格经远程网络访问服务。**输出：** 同一界面中的远程终端与服务预览。

```sh
cmux ssh user@remote
```

**已有场景（可推导用法；具体命令及兼容性以本次核对为准）：**
场景：同时跑 5 个 Coding Agent → 每个任务放到独立 cmux workspace/split → Agent 等待输入时 pane 高亮并进入通知面板 → 你直接跳到未读任务继续处理；还可用 `cmux ssh user@remote` 管远程 Agent。

> 资料核对日期：2026-10-08。以上优先依据仓库 README/官方描述；若涉及工作流组合，则按项目已声明能力进行具体化，不视为额外官方承诺。

## 适合谁
在 Mac 上并行使用 Claude Code、Codex 或远程开发终端的工程师。

## 局限 / 注意点
仅面向 macOS；大量并行 Agent 仍受机器资源、上下文和各 Agent 自身限制。

## Trending 历史
- 2026-10-08：#9 · Stars Today：44 · Total Stars：27880 · Forks：2463

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/10/2026-10-08|2026-10-08]]

## GitHub
https://github.com/manaflow-ai/cmux

## 官方资料核对
- 核对日期：2026-10-08
- README：https://github.com/manaflow-ai/cmux/blob/main/README.md
- README blob SHA：6a55ca4cf3e938d77c679712d83d8f229bc490aa
