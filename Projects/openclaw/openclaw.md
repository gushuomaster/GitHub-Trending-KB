---
repo: "openclaw/openclaw"
url: "https://github.com/openclaw/openclaw"
first_seen: 2026-10-01
last_seen: 2026-10-01
trending_count: 1
github_rank: 7
stars_today: 136
total_stars: 390984
forks: 82221
language: TypeScript
fetched_at: "2026-10-01T07:59:50+08:00"
category: ["AI", "Agent", "Personal Assistant"]
tags: ["assistant", "gateway", "messaging", "skills", "automation"]
topics: ["AI", "Agent"]
status: active
---
# openclaw/openclaw

## 一句话说明
在自己的设备上运行一个可接入消息渠道、工具、Skills 和设备节点的个人 AI 助手。

## 它能做什么
- 用本地 Gateway 统一管理会话、工具、事件和渠道连接。
- 接入 WhatsApp、Telegram、Slack、Discord、Signal、iMessage 等消息渠道。
- 通过插件、Skills、模型 Provider 和伴侣节点扩展浏览器、语音、屏幕与设备操作。
- 提供 Control UI、CLI 与 TUI 管理运行状态。

## 怎么利用
安装后运行 onboarding，配置模型访问与工作区，再用 dashboard 发送首条消息；确认本地助手可用后按官方渠道文档连接一个消息服务，并只授予完成任务所需的工具权限。

## 实际例子
**官方 Quickstart →** 在本机启动私人助手。 **输入 →** 一个可用模型 Provider 和本地工作区。 **操作 →** 执行 onboarding 安装 daemon，检查 Gateway 状态并打开 Dashboard 发送测试消息。 **输出 →** 可在 Control UI 中持续对话、调用工具的本地助手实例。

    openclaw onboard --install-daemon
    openclaw gateway status
    openclaw dashboard

## 适合谁
希望自托管个人 Agent，并从常用聊天软件或本地设备调用它的高级用户和开发者。

## 局限 / 注意点
主会话工具默认可能直接在宿主机运行；外部消息必须视为不可信输入，连接其他用户或公开 Gateway 前应配置配对、沙箱、网络暴露和最小权限。多渠道还各自涉及账号和平台条款。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-10-01 | 7 | +136 | 390984 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Agent|Agent]]

## 相关日报
- [[Daily/2026/10/2026-10-01|2026-10-01]]

