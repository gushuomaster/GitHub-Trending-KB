---
stats_as_of: "2026-11-27"
documentation_checked_at: "2026-11-27"
fetched_at: "2026-11-27T08:10:28+08:00"
type: github-project
repo: "cursor/plugins"
url: "https://github.com/cursor/plugins"
first_seen: "2026-10-02"
last_seen: "2026-11-27"
trending_count: 14
github_rank: 5
language: "TypeScript"
total_stars: 19782
forks: 2141
stars_today: 270
category: ["AI", "Developer-Tools", "Plugins"]
tags: ["cursor", "plugins", "skills", "mcp"]
topics: ["AI", "Developer-Tools", "Skills"]
snapshot_status: "live"
---
# cursor/plugins

## 一句话说明
Cursor 官方插件集合与市场清单，用统一 manifest 打包 Skills、Rules、MCP 配置和文档，方便用户发现、安装与维护 Agent 扩展。

## 它能做什么
- 在根级 `.cursor-plugin/marketplace.json` 集中登记市场内的插件。
- 每个插件通过自己的 `.cursor-plugin/plugin.json` 描述名称、版本和组成。
- 允许插件携带 Skills、Rules、`mcp.json`、README、变更记录和许可证。
- 提供 create-plugin、cursor-sdk、orchestrate、teaching、continual-learning、thermos、Origin Apps、GitHub、Google Drive 与 Playwright 等插件条目。

当前目录还收录大量第三方业务集成；其中部分插件可修改广告、财务、消息、订单或设备状态，使用前必须逐项确认账号权限和变更预览。

## 怎么利用
先从仓库目录选择所需插件，阅读全文和 manifest，确认它会加载哪些 Skill、规则、MCP 服务以及需要哪些外部权限；再通过 Cursor 插件市场安装。输入是目标工作流与授权信息，处理过程是插件把这些能力注册进 Cursor，输出是在 Agent 会话中可调用的对应工具或流程。

## 实际例子
**官方仓库场景 →** 想让 Cursor 自动操作浏览器。**输入 →** 目标网页测试任务。**操作 →** 找到 Playwright 插件目录，审查 `plugin.json`、README 和 MCP 配置后安装，并按说明配置运行环境。**输出 →** Cursor 会话中可调用的浏览器自动化工具及执行结果。

**可推导用法 →** 开发新插件时参考 create-plugin 的目录结构，把一项内部 Skill、规则与 README 写入独立插件目录，先在本地校验 manifest，再提交到自有市场。

## 关键命令
官方 README 以 Cursor 插件市场和各插件目录说明为主，没有给出适用于全部插件的一条通用 CLI 安装命令。

## 适合谁
维护 Cursor 工作流的开发者、为团队分发 Skills/Rules/MCP 集成的平台工程师，以及需要审查插件构成和权限的安全人员。

## 局限 / 注意点
仓库内容和插件目录会快速变化；第三方连接通常需要额外账号、凭据与授权。进入官方市场集合不代表每个插件都由 Cursor 编写或适合直接信任，安装前仍应逐项审查代码、网络访问和密钥范围。

## Trending 历史


| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 证据说明 |
| --- | ---: | ---: | ---: | ---: | --- |
| 2026-10-02 | 6 | 未保存 | 未保存 | 未保存 | 日期匹配语言不限归档 |
| 2026-10-03 | 14 | 未保存 | 未保存 | 未保存 | 仓库已存日期匹配快照 |
| 2026-10-17 | 9 | 278 | 11941 | 1161 | GitHub Today live snapshot |
| 2026-10-19 | 4 | 350 | 12733 | 1254 | GitHub Today live snapshot |
| 2026-11-18 | 8 | 201 | 16887 | 1829 | GitHub Today live snapshot |
| 2026-11-19 | 1 | 314 | 17185 | 1894 | GitHub Today live snapshot |
| 2026-11-20 | 5 | 384 | 17549 | 1930 | GitHub Today live snapshot |
| 2026-11-21 | 5 | 299 | 17839 | 1957 | GitHub Today live snapshot |
| 2026-11-22 | 5 | 260 | 18099 | 1976 | GitHub Today live snapshot |
| 2026-11-23 | 5 | 294 | 18431 | 2005 | GitHub Today live snapshot |
| 2026-11-24 | 5 | 397 | 18795 | 2042 | GitHub Today live snapshot |
| 2026-11-25 | 5 | 360 | 19196 | 2077 | GitHub Today live snapshot |
| 2026-11-26 | 5 | 416 | 19,524 | 2,106 | GitHub Today live snapshot |
| 2026-11-27 | 5 | 270 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Skills|Skills]]

## 相关日报



- [[Daily/2026/10/2026-10-02|2026-10-02]]
- [[Daily/2026/10/2026-10-03|2026-10-03]]

- [[Daily/2026/10/2026-10-17|2026-10-17]]

- [[Daily/2026/10/2026-10-19|2026-10-19]]
- [[Daily/2026/11/2026-11-18|2026-11-18]]

- [[Daily/2026/11/2026-11-19|2026-11-19]]

- [[Daily/2026/11/2026-11-20|2026-11-20]]
- [[Daily/2026/11/2026-11-21|2026-11-21]]
- [[Daily/2026/11/2026-11-22|2026-11-22]]
- [[Daily/2026/11/2026-11-23|2026-11-23]]
- [[Daily/2026/11/2026-11-24|2026-11-24]]
- [[Daily/2026/11/2026-11-25|2026-11-25]]
- [[Daily/2026/11/2026-11-26|2026-11-26]]
- [[Daily/2026/11/2026-11-27|2026-11-27]]

## GitHub 原始链接
https://github.com/cursor/plugins

## 官方资料核对
- 核对日期：2026-10-19
- README：https://github.com/cursor/plugins/blob/main/README.md
- README blob SHA：886849908ef8c6fb3f08dae1dc30ca69d37d11f7
- 说明：项目卡反映核对日的当前仓库结构，不声称它与历史上榜日完全相同。

## 官方资料复核（2026-11-18）
- README：https://github.com/cursor/plugins/blob/HEAD/README.md
- README blob SHA：`e3e669db8de95e7e9e9ce8aba04fbcf0c7bfdd58`
- 本次按当前官方 README 复核并合并当天榜单事实；保留既有说明、案例、分类、主题、风险与较早历史。

## 官方资料复核（2026-11-19）
- README：https://github.com/cursor/plugins/blob/HEAD/README.md
- README blob SHA：`e3e669db8de95e7e9e9ce8aba04fbcf0c7bfdd58`
- 本次按当前官方 README 复核并合并当天榜单事实；保留既有说明、案例、分类、主题、风险与较早历史。

## 官方资料复核（2026-11-20）
- README：https://github.com/cursor/plugins/blob/HEAD/README.md
- README blob SHA：`e3e669db8de95e7e9e9ce8aba04fbcf0c7bfdd58`
- 本次按当前官方 README 复核并合并当天榜单事实；保留既有说明、案例、分类、主题、风险与较早历史。

## 最近变化
- 资料核对（2026-11-21）：重新读取当前官方 README；README blob SHA：`e3e669db8de95e7e9e9ce8aba04fbcf0c7bfdd58`。
- 资料核对（2026-11-24）：当前市场目录新增 FreshBooks 与 Campfire；二者均以托管 MCP/OAuth 接入财务数据，继续适用逐插件审查账号、网络和变更权限的边界。README blob SHA：`28aed68198b3cb587705b65218a09b512a8c1889`。
- 资料核对（2026-11-25）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`c36b556df55731603d5b7ae31b08a65974bf55f0`。
- 资料核对（2026-11-26）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`c36b556df55731603d5b7ae31b08a65974bf55f0`。
- 资料核对（2026-11-27）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`8447d807c64f80e90c39a68dbb12e0489dc43b86`。
