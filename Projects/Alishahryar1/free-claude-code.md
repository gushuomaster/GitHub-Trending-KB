---
type: github-project
repo: "Alishahryar1/free-claude-code"
url: "https://github.com/Alishahryar1/free-claude-code"
first_seen: "2026-10-13"
last_seen: "2026-10-13"
trending_count: 1
language: "Python"
total_stars: 59087
forks: 9309
stars_today: 626
github_rank: 9
fetched_at: "2026-10-13T08:05:00+08:00"
category: ["AI", "Developer-Tools", "Coding-Agent"]
tags: ["github/ai", "github/coding-agent", "github/proxy"]
topics: ["AI", "Developer-Tools", "Coding-Agent"]
---
# Alishahryar1/free-claude-code

## 一句话说明
在本机用统一代理和管理界面把多家免费、付费或本地模型接给 Claude Code、Codex 等 Coding Agent，并在失败时自动切换备用模型。

**官方描述：** Use Claude Code, Codex, VSCode, Pi, and OpenCode (and 6 other harnesses) for free (1.3B+ free tokens) from your terminal, app, IDE, or phone, and now from the browser with native browser sessions (multi-harness + multi-model) like OpenClaw (voice supported + ToS friendly)

## 它能做什么
- 用一个模型目录和本地代理连接 README 所列的 61 个 provider，并服务 11 种 Coding Agent。
- 为所有客户端配置有序 fallback models，在 provider 重试失败后接着处理同一轮任务。
- 提供浏览器原生 Codex 会话，以及终端、IDE、桌面端、Discord/Telegram 等入口。
- 可选用 RTK 过滤命令输出、用 Headroom 压缩工具结果，并支持本地 Whisper/NVIDIA NIM 语音输入。

## 怎么利用
安装后启动 FCC 的本地服务，在 Admin UI 中配置自己有权使用的 provider API key、OAuth 或本地模型，再选择默认模型与 fallback 顺序。随后从目标仓库运行 `fcc-codex`（或其他 launcher），Coding Agent 的请求经本地代理路由，最后得到代码修改、终端输出与会话记录；主 provider 不可用时按配置切换。

## 实际例子
**官方 Quick Start → 场景：** 让 Codex 同时使用一个首选模型和一个备用模型。**输入：** 本地代码目录、两家 provider 的合法凭据。**操作：** 安装 FCC，在 Admin UI 配置 provider 和 fallback models，然后运行 `fcc-codex`。**输出：** Codex 保持原有工具能力并通过所选模型工作；首选请求失败时，代理尝试下一模型而无需重启该轮。

## 关键命令
```sh
curl -fsSL "https://raw.githubusercontent.com/Alishahryar1/free-claude-code/main/scripts/install.sh" | sh
fcc-codex
```

## 适合谁
需要在不同模型/配额间切换，又希望继续使用 Codex、Claude Code、Aider 或 VS Code Chat 的个人开发者和小型研发团队。

## 局限 / 注意点
README 宣称的 provider 数量、免费额度与“1.3B+ tokens”由各 provider 控制，随时可能变化，不能视为永久保证；仍需合法凭据、订阅或本地算力。安装脚本会执行远程代码，本地代理会接触 API key 和源代码，使用前应审查脚本、开启代理认证并限制监听地址；项目也明确与 Anthropic 无隶属或背书关系。

## Trending 历史
- 2026-10-13：#9 · Stars Today：626 · Total Stars：59087 · Forks：9309

## 相关主题
[[Topics/AI|AI]] · [[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Coding-Agent|Coding-Agent]]

## 相关日报
- [[Daily/2026/10/2026-10-13|2026-10-13]]

## GitHub 原始链接
https://github.com/Alishahryar1/free-claude-code

## 官方资料核对
- 核对日期：2026-10-13
- README：https://github.com/Alishahryar1/free-claude-code/blob/main/README.md

