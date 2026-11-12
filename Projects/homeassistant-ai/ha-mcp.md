---
type: github-project
repo: "homeassistant-ai/ha-mcp"
url: "https://github.com/homeassistant-ai/ha-mcp"
first_seen: "2026-11-10"
last_seen: "2026-11-12"
trending_count: 3
language: "Python"
total_stars: 7351
forks: 455
stars_today: 645
github_rank: 8
fetched_at: "2026-11-12T08:08:27+08:00"
documentation_checked_at: "2026-11-12"
stats_as_of: "2026-11-12"
snapshot_status: "live"
category: ["Home Assistant","MCP","Smart Home"]
topics: ["Home-Assistant","MCP","Automation"]
---
# homeassistant-ai/ha-mcp

## 一句话说明
HA-MCP 把 Home Assistant 的设备、自动化、脚本、仪表盘和诊断能力暴露为 MCP 工具，让 Claude、ChatGPT 等助手用自然语言配置和排查智能家居。

## 它能做什么
- 提供实体搜索、设备控制、状态、历史统计和自动化 trace 等查询工具。
- 创建或修改自动化、脚本、helper、仪表盘、区域、日历与蓝图。
- 支持备份/恢复、更新、设备注册表和按工具启停的安全策略。
- 可作为 Home Assistant 集成、App、Docker、HTTP 或本地 stdio 服务运行。

## 怎么利用
在 Home Assistant 2026.8+ 通过 HACS 或 Marketplace 安装集成，创建专用本地管理员账号或令牌，启用所需连接方式并把 Configure 页的 MCP URL 加到 AI 客户端；输入自然语言指令，输出对应配置变更或诊断结果。

## 实际例子
**官方示例 →** 向已连接的助手提出“创建一个日落时打开门廊灯的自动化”，HA-MCP 读取实体并写入正确 trigger/action；用户随后在 Home Assistant 中复核生成的自动化。

## 适合谁
希望用 AI 管理 Home Assistant、批量维护自动化或排查设备与执行轨迹的智能家居用户和集成开发者。

## 局限 / 注意点
服务器通常持有管理员级凭据，泄露令牌或 secret URL 会带来高权限风险，应使用专用账号、最小开放工具和只读模式。每个客户端只应配置一种安装方式；stdio 有已知连接问题，YAML/文件编辑属于默认关闭的可选高风险能力。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-10 | 10 | 31 | 5946 | 293 | GitHub Today live snapshot |
| 2026-11-11 | 7 | 790 | 6630 | 429 | GitHub Today live snapshot |
| 2026-11-12 | 8 | 645 | 7351 | 455 | GitHub Today live snapshot |

## 相关主题
[[Topics/Home-Assistant|Home-Assistant]] · [[Topics/MCP|MCP]] · [[Topics/Automation|Automation]]

## 相关日报
- [[Daily/2026/11/2026-11-10|2026-11-10]]

- [[Daily/2026/11/2026-11-11|2026-11-11]]

- [[Daily/2026/11/2026-11-12|2026-11-12]]

## GitHub 原始链接
https://github.com/homeassistant-ai/ha-mcp

## 官方资料复核（2026-11-10）
- README：https://github.com/homeassistant-ai/ha-mcp/blob/HEAD/README.md
- README blob SHA：`42ab0533b36614b91cc67d5d3691e3782c429125`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

## 官方资料复核（2026-11-11）
- README：https://github.com/homeassistant-ai/ha-mcp/blob/HEAD/README.md
- README blob SHA：`42ab0533b36614b91cc67d5d3691e3782c429125`
- 本次按当前官方资料复核，仅合并当天榜单事实、历史和证据；既有能力、案例、分类、风险说明与较早历史均保留。

## 官方资料复核（2026-11-12）
- README：https://github.com/homeassistant-ai/ha-mcp/blob/HEAD/README.md
- README blob SHA：`e55a391e681dbb454b5306a1c99315c043b5ebb3`
- 本次按当前官方资料复核，仅合并当天榜单事实、历史和证据；既有能力、案例、分类、风险说明与较早历史均保留。
