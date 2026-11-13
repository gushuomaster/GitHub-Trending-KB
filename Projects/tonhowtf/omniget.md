---
type: github-project
repo: "tonhowtf/omniget"
url: "https://github.com/tonhowtf/omniget"
category: ["Downloader","Media","Desktop","AI Agent"]
topics: ["Downloader","Media","Desktop","MCP","AI-Agent"]
first_seen: 2026-09-14
last_seen: 2026-09-16
trending_count: 2
documentation_checked_at: "2026-11-13"
---
# tonhowtf/omniget

## 一句话说明
跨平台桌面下载器与 Agent 工作台，把视频、音频、图片、种子和文件下载集中到可恢复队列，并允许 Claude Code、Codex 等客户端通过 MCP 调用。

## 它能做什么
- 通过自有提取器、yt-dlp、gallery-dl 和内置 BitTorrent 支持视频、音频、图库、直链、HLS/DASH 与磁力链接。
- 提供可恢复、重试、限速和规则化的下载队列，并保存实际 yt-dlp 命令以便诊断后重跑。
- 内置仅监听 `127.0.0.1` 的 MCP 服务，每个客户端使用独立 token 与细粒度权限来查询或控制下载。
- 在桌面窗口运行 Claude Code、Codex、Gemini CLI 或本地模型 Agent，并提供审批、任务状态和结果查看。

## 怎么利用
安装桌面版后开启 LLM → MCP，为 Codex 或 Claude Code 创建只读或下载控制连接并复制配置。输入是媒体链接与目标格式；客户端调用 OmniGet 查询格式、批量入队、等待状态变化并读取失败原因，最终得到本地文件和可复核的队列结果。

## 实际例子
**官方 MCP 工作流 → 场景：** 让 Claude Code 下载一个播放列表并汇报失败项。**输入：** 播放列表 URL、音频格式和该客户端的 MCP token。**操作：** Agent 先读取集合，再批量入队并等待队列变化。**输出：** 已完成文件清单及每个失败任务的清理后日志与恢复选项。

## 关键命令
```bash
read -rs OMNIGET_MCP_TOKEN && export OMNIGET_MCP_TOKEN
claude mcp add --transport http --scope project omniget <address> --header 'Authorization: Bearer ${OMNIGET_MCP_TOKEN}'
```

## 适合谁
需要合法离线保存媒体、让 Coding Agent 管理下载队列，或在本机统一运行多种 CLI Agent 的个人用户与自动化开发者。

## 局限 / 注意点
- 用户必须拥有下载内容的权利并遵守站点条款；平台规则、登录状态和限流变化会使提取失效。浏览器扩展会转交登录 cookies，本地 MCP/Agent 会接触 token、下载文件和工作目录，仍需按最小权限创建连接并保护本机账户。当前官方仓库已恢复，但当前功能不代表 2026-09 历史上榜时的版本。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-14 | 16 | 未保存 | 未保存 | 仓库已存快照 |
| 2026-09-16 | 13 | 未保存 | 未保存 | 日期匹配归档；可核实统计仅保留原日报证据 |

## 相关主题
[[Topics/Downloader|Downloader]] · [[Topics/Media|Media]] · [[Topics/Desktop|Desktop]] · [[Topics/MCP|MCP]] · [[Topics/AI-Agent|AI-Agent]]

## 相关日报
- [[Daily/2026/09/2026-09-14|2026-09-14]]
- [[Daily/2026/09/2026-09-16|2026-09-16]]

## GitHub 原始链接
https://github.com/tonhowtf/omniget

## 官方资料核对
- 核对日期：2026-10-09
- README：核验时官方仓库返回 404；使用公开镜像与项目索引交叉核对
- 说明：项目卡反映核对日可得资料，不声称这些能力与历史上榜日的项目版本完全相同。

## 官方资料复核（2026-11-13）
- README：https://github.com/tonhowtf/omniget/blob/HEAD/README.md
- README blob SHA：`d8fdad0f346aaca52226f369e6bf798c8d77a41e`
- 官方仓库已恢复可访问；本次只更新持续维护的项目卡和外部阻塞状态，保留 2026-09-14、2026-09-16 的归档榜单、历史统计空值与当时来源说明。

## 2026-09-16 历史核验
- GitHub Trending 原始排名：#13
- Stars Today：未保存
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/01abc33224d0523ab2a25bced4e1258b69fc6015/archive/repository/2026/2026-09-16/(null).json)
- 归档提交时间：2026-09-16T01:13:23Z；该时间不是页面抓取时间。
