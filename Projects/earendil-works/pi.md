---
type: github-project
repo: earendil-works/pi
url: https://github.com/earendil-works/pi
first_seen: '2026-09-16'
last_seen: '2026-10-04'
trending_count: 3
category:
- AI Agent
- CLI
- SDK
topics:
- AI Agent
- CLI
- SDK
github_rank: 14
documentation_checked_at: '2026-10-13'
stats_as_of: '2026-09-16'
stars_today: 437
total_stars: null
forks: null
language: null
---

# earendil-works/pi

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
极简但可扩展的 Agent 运行框架，把统一 LLM API、工具循环、终端界面、Coding CLI、SDK 与 RPC 放进一套工具箱。

## 它能做什么
- 通过扩展、Skills、提示模板、主题和包系统定制 Agent
- 支持交互式、单次输出、JSON、RPC 与 SDK 等运行模式
- 以统一接口接入多家 LLM，并在工具循环中完成编码任务
- 提供遥测、耐久状态和配套运行时，便于嵌入其他自动化系统

## 怎么利用
官方流程：安装后进入代码目录运行 `pi`，通过 `/login` 配置模型，再描述编码任务；交互模式可直接审阅工具调用，自动化系统则可通过 JSON、RPC 或 SDK 接收结构化输出。

## 实际例子
**可推导用法 → 场景：** 在本地仓库修复测试失败。**输入：** 仓库、失败测试和修改边界。**操作：** 进入项目运行 `pi`，通过 `/login` 连接 Provider，再描述失败及验收要求。**输出：** 文件改动、命令执行和验证结果；需要自动化集成时使用 JSON/RPC/SDK 接收结构化状态。

## 适合谁
需要轻量 Coding Agent CLI，或希望把 Agent loop 嵌入终端与自有系统的开发者。

## 局限 / 注意点
项目明确不内置权限系统，工具以当前用户或进程权限运行；需要更强边界时必须使用容器或外部沙箱，同时注意 Node 22.19+ 和快速变化的扩展/API 兼容性。

## 关键命令
```bash
pi
/login
```

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-16 | 14 | 437 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/01abc33224d0523ab2a25bced4e1258b69fc6015/archive/repository/2026/2026-09-16/(null).json) |
| 2026-10-02 | 10 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/95a8b5931135f4aef4bbc15dbb13ca4dc9319407/archive/repository/2026/2026-10-02/(null).json) |
| 2026-10-04 | 14 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fe5095909e994262e6bf167a48b8035f8d07bb3b/archive/repository/2026/2026-10-04/(null).json) |

## 相关主题
[[Topics/AI Agent|AI Agent]] · [[Topics/CLI|CLI]] · [[Topics/SDK|SDK]]

## 相关日报
- [[Daily/2026/09/2026-09-16|2026-09-16]]
- [[Daily/2026/10/2026-10-02|2026-10-02]]
- [[Daily/2026/10/2026-10-04|2026-10-04]]

## GitHub 原始链接
https://github.com/earendil-works/pi

## 官方资料复核（2026-10-13）
- README：https://github.com/earendil-works/pi/blob/main/README.md
- README blob SHA：`93184c10ff45b8b4ecc8c2e0f8e239501f3880e6`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。
