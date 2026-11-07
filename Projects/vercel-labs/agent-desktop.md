---
type: github-project
repo: "vercel-labs/agent-desktop"
first_seen: "2026-11-03"
last_seen: "2026-11-06"
language: "Rust"
total_stars: 16808
forks: 1186
stars_today: 2173
github_rank: 6
trending_count: 4
fetched_at: "2026-11-06T08:10:55+08:00"
url: "https://github.com/vercel-labs/agent-desktop"
documentation_checked_at: "2026-11-06"
stats_as_of: "2026-11-06"
snapshot_status: "live"
---

# vercel-labs/agent-desktop

## 一句话说明
通过操作系统无障碍树向 AI Agent 提供跨 macOS、Windows 和 Linux 的桌面观察与操作命令，让自动化不必依赖脆弱的屏幕坐标。

## 它能做什么
- 用 `snapshot`、`find`、`get` 和截图命令读取应用、窗口及可交互控件。
- 以带快照标识的 ref 执行点击、输入、选择、滚动、拖拽和键盘操作，并返回结构化 JSON。
- 管理应用、窗口、通知、剪贴板、等待、会话与 trace；也提供 C FFI 供进程内调用。
- 为 Coding Agent 输出与二进制版本匹配的内置 skills 文档。
- 通过 `agent-desktop mcp` 把各命令作为 stdio MCP 工具暴露给支持 MCP 的 Agent 宿主。

## 怎么利用
先安装 CLI，对目标应用取得交互元素快照；从返回的 ref 中选择目标并执行动作，随后重新快照验证结果。输入是应用/窗口和动作参数，处理过程走系统无障碍接口，输出是统一 JSON envelope 与更新后的 UI 状态。

## 实际例子
**官方 Quick Start → 场景：** 打开 Finder 的 Downloads 并点击 Documents。**输入：** Finder 应用。**操作：** 先用 `snapshot --app Finder -i` 获取 ref，再对 Documents 的 ref 执行 `click`，最后重新 snapshot。**输出：** 点击结果以及可核对的新窗口树。

```bash
npm install -g agent-desktop
agent-desktop snapshot --app Finder -i
agent-desktop click @s8f3k2p9:e8
```

## 适合谁
需要让本地 AI Agent 操作桌面应用、又希望保留可审计结构化动作结果的 Agent 工程师和自动化测试人员。

## 局限 / 注意点
ref 绑定具体快照，UI 变化后可能返回 `STALE_REF` 或目标歧义，必须重新观察；不同系统对 headed/headless 动作的支持不同。快照、剪贴板、截图、命令输出和 trace 可能包含私密桌面内容，不应进入公开日志；工具本身不含模型。
项目本身没有内置模型，观察—动作—验证循环由上层 Agent 实现。ref 只属于生成它的快照，界面变化后可能返回 `STALE_REF`；多窗口需显式指定 window id。Linux 依赖 AT-SPI，鼠标能力还受 X11/Wayland 与桌面环境限制；Windows、macOS 和 Linux 的支持项并不完全相同。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 证据说明 |
|---|---:|---:|---:|---:|---|
| 2026-11-03 | 1 | 2275 | 9585 | 649 | GitHub Today live snapshot |
| 2026-11-04 | 2 | 3791 | 12676 | 872 | GitHub Today live snapshot |
| 2026-11-05 | 6 | 2470 | 15624 | 1087 | GitHub Today live snapshot |
| 2026-11-06 | 6 | 2173 | 16808 | 1186 | GitHub Today live snapshot |

## 相关主题
- [[Topics/AI]]
- [[Topics/Automation]]

## 相关日报
- [[Daily/2026/11/2026-11-03|2026-11-03]]
- [[Daily/2026/11/2026-11-04|2026-11-04]]
- [[Daily/2026/11/2026-11-05|2026-11-05]]
- [[Daily/2026/11/2026-11-06|2026-11-06]]

## GitHub 原始链接
https://github.com/vercel-labs/agent-desktop

## 官方资料复核（2026-11-03）
- README：https://github.com/vercel-labs/agent-desktop/blob/main/README.md
- 复核了官方安装、Quick Start、命令分组、平台支持与 FFI 说明。

## 官方资料复核（2026-11-04）
- README：https://github.com/vercel-labs/agent-desktop/blob/HEAD/README.md
- README blob SHA：`42ac024da8f804375e3dd0dbea488bd0fe1c2978`
- 本次复核确认官方 README 新增 `agent-desktop mcp`：它以 stdio 暴露命令，工具名与命令对应；同时明确项目本身不含模型。
- 本次按当前官方 README 复核；仅合并当天榜单事实、必要能力补充与复核记录，原有说明、案例、分类、标签、风险与历史均保留。

## 官方资料复核（2026-11-05）
- README：https://github.com/vercel-labs/agent-desktop/blob/HEAD/README.md
- README blob SHA：`32dee9630df91348cb7202f5e4329b30b5237e3c`
- 当前 README 明确 refs 的快照作用域、平台最低版本及隐私边界；相应局限已补入正文，原有能力和历史保留。

## 官方资料复核（2026-11-06）
- README：https://github.com/vercel-labs/agent-desktop/blob/HEAD/README.md
- README blob SHA：`32dee9630df91348cb7202f5e4329b30b5237e3c`
- 本次只合并当天榜单事实与资料复核记录，原有详细说明、案例、分类、标签、风险和历史均保留。
