---
type: github-project
repo: "nightly-labs/openbot"
url: "https://github.com/nightly-labs/openbot"
first_seen: "2026-10-27"
last_seen: "2026-10-28"
trending_count: 2
github_rank: 3
stars_today: 777
total_stars: 2398
forks: 248
language: "TypeScript"
fetched_at: "2026-10-28T08:05:36+08:00"
documentation_checked_at: "2026-10-28"
stats_as_of: "2026-10-28"
snapshot_status: live
category: ["Desktop Agent", "Agent Workspace", "Automation"]
topics: ["AI Agent", "Desktop", "Multi-Agent", "Browser Automation"]
status: preview
---
# nightly-labs/openbot

## 一句话说明
提供本地优先的桌面工作区，让多个长期运行的 AI 队友各自拥有会话、文件空间和任务队列，并能共享文件、控制浏览器和相互协作。

## 它能做什么
- 运行 Codex、Claude、Grok、OpenCode、Gemini、Cursor 或 Cline 等独立 Agent 会话。
- 为每个 Agent 保留工作区、会话与上下文，并在长线程耗尽窗口前自动压缩。
- 提供可暂停、恢复、取消且崩溃后可恢复的 FIFO 任务队列。
- 支持 Agent 间消息、文件传输、共享频道委派，以及内嵌浏览器和可选 Computer Use。
- 可连接 OpenAI 兼容端点、本地 Ollama/LM Studio，并支持桌面端、移动端或自托管服务器访问。

## 怎么利用
在桌面端安装 OpenBot，为“资料收集”和“代码实现”分别创建 Agent，给每个 Agent 独立目录与说明。输入是任务、附件和允许访问的网页；OpenBot 把任务排入队列，Agent 可通过消息和托管文件传递结果，最终在共享频道获得研究材料、实现文件与可继续复核的会话记录。

## 实际例子
**官方能力对应场景 → 场景：** 把一台 Linux 主机变成随时可访问的长期 Agent 工作站。**输入：** Ubuntu 主机、邮箱登录和需要处理的项目目录。**操作：** 用官方脚本安装服务器并登录，再从桌面、iPhone 或网页连接，为不同任务建立 Agent。**输出：** 保存在该主机上的独立 Agent 工作区、持久任务队列和会话。

```bash
curl -fsSL https://raw.githubusercontent.com/nightly-labs/openbot/main/scripts/install-server.sh | sudo bash
sudo openbot login
```

## 适合谁
需要让多个 Coding/Research Agent 长期驻留、分工并跨设备查看状态的个人开发者、自动化团队和自托管实验者。

## 局限 / 注意点
- 官方明确标为 development preview；Agent 当前以 `danger-full-access` 且 `approvalPolicy: never` 运行，首次同意后可修改文件、执行命令、访问网络和控制浏览器，必须只运行可信任务并保持备份。
- “本地优先”不等于离线：各模型供应商、网页和插件仍会联网。许可证为 PolyForm Noncommercial 1.0.0，商用前需核对条款；部分平台、远程桌面和登录流程还有系统限制。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-27 | 9 | 176 | 1457 | 184 | GitHub Today live snapshot |
| 2026-10-28 | 3 | 777 | 2398 | 248 | GitHub Today live snapshot |

## 相关主题
[[Topics/AI-Agent|AI-Agent]] · [[Topics/Desktop|Desktop]] · [[Topics/Multi-Agent|Multi-Agent]] · [[Topics/Browser-Automation|Browser-Automation]]

## 相关日报
- [[Daily/2026/10/2026-10-27|2026-10-27]]
- [[Daily/2026/10/2026-10-28|2026-10-28]]

## GitHub 原始链接
https://github.com/nightly-labs/openbot

## 官方资料复核（2026-10-28）
- README：https://github.com/nightly-labs/openbot/blob/main/README.md
- README blob SHA：`c895cf81d1cc77b64996ea44301bf7cb0fabb48c`


