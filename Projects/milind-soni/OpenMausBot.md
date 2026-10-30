---
type: github-project
repo: "milind-soni/OpenMausBot"
url: "https://github.com/milind-soni/OpenMausBot"
first_seen: "2026-10-30"
last_seen: "2026-10-30"
trending_count: 1
github_rank: 5
stars_today: 1199
total_stars: 7457
forks: 1112
language: "TypeScript"
fetched_at: "2026-10-30T08:08:40+08:00"
documentation_checked_at: "2026-10-30"
stats_as_of: "2026-10-30"
snapshot_status: "live"
category: ["Multi-Agent", "Desktop Automation", "Agent Workspace"]
topics: ["AI-Agent", "Multi-Agent", "Computer-Use", "MCP"]
status: active
---
# milind-soni/OpenMausBot

## 一句话说明
把 Claude、Codex、Grok 等 Agent 组织成可长期运行的 AI 团队，让每个 Bot 拥有独立工作空间、电脑和任务队列，同时把高风险动作交给用户审批。

## 它能做什么
- 为每个 Bot 选择不同 Agent CLI 和模型，并在同一界面管理会话、频道、任务与队友协作。
- 给 Bot 分配本机或云端电脑、文件空间和浏览器，并用权限代理对命令、文件修改和问题进行允许或拒绝。
- 通过 Composio 连接 Gmail、Slack、GitHub 等应用，并支持定时任务、Webhook、MCP 和无界面 CLI 自动化。
- 用一份团队配置创建完整部门，等待协作任务结束后导出产物和运行记录。

## 怎么利用
先安装桌面发行版，或在 Node.js 24+ 环境从源码启动；登录至少一个受支持的 Agent CLI。输入是一份团队配置、Bot 角色和明确任务，OpenMausBot 启动对应 Agent、电脑和连接器，在审批边界内执行，最终输出聊天记录、任务状态及导出的文件。

## 实际例子
**官方 CLI 示例 → 场景：** 让“Room Lead”带队演练一个网站上线。**输入：** `team.yaml` 和目标网址。**操作：** 应用团队配置，再提交演练任务并等待所有被委派的队友完成。**输出：** 导出目录中的任务产物，以及可供 CI 判断的 JSON/退出码。

```sh
openmausbot team apply team.yaml
openmausbot run "Room Lead" "Rehearse the launch of https://example.com" --export ./out
```

## 适合谁
需要在本机统一调度多个 Coding Agent、为业务流程配置审批与连接器，或把多 Agent 工作流放入 CI 的开发团队和自动化工程师。

## 局限 / 注意点
- 源码运行要求 Node.js 24+、pnpm，并需至少一个已安装且登录的 Agent CLI；Composio、Boat 和语音服务需要各自账号或密钥，部分服务可能收费。
- Windows 安装包尚未代码签名；Ubuntu 支持仍为 Beta，Wayland 下本机控制被安全门禁禁用。
- Bot 能操作命令、文件和外部应用，仍须最小授权、审查审批卡、隔离凭据并为远程入口配置认证；项目不能替代人工责任审核。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-30 | 5 | 1199 | 7457 | 1112 | GitHub Today live snapshot |

## 相关主题
[[Topics/AI-Agent|AI-Agent]] · [[Topics/Multi-Agent|Multi-Agent]] · [[Topics/Computer-Use|Computer-Use]] · [[Topics/MCP|MCP]]

## 相关日报
- [[Daily/2026/10/2026-10-30|2026-10-30]]

## GitHub 原始链接
https://github.com/milind-soni/OpenMausBot

## 官方资料复核（2026-10-30）
- README：https://github.com/milind-soni/OpenMausBot/blob/main/README.md
- README blob SHA：`50140729a8a27690fad4c327d019b3858e25affc`
