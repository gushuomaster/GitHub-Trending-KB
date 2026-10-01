---
repo: "modelcontextprotocol/servers"
url: "https://github.com/modelcontextprotocol/servers"
first_seen: 2026-10-01
last_seen: 2026-10-01
trending_count: 1
github_rank: 12
stars_today: 50
total_stars: 90805
forks: 11724
language: TypeScript
fetched_at: "2026-10-01T07:59:50+08:00"
category: ["AI", "MCP", "Reference"]
tags: ["mcp", "tools", "resources", "reference-server", "sdk"]
topics: ["AI", "MCP"]
status: active
---
# modelcontextprotocol/servers

## 一句话说明
提供 MCP 官方参考服务器和示例，展示客户端如何安全接入文件、Git、记忆、时间、网页抓取等外部能力。

## 它能做什么
- 提供 Everything、Fetch、Filesystem、Git、Memory、Sequential Thinking、Time 等参考实现。
- 同时覆盖 TypeScript 与 Python 服务器的直接运行方式。
- 给出 MCP 客户端配置示例，便于理解 command、args 与权限范围。

## 怎么利用
选择一个参考服务器，用 npx 或 uvx 在本机启动，再将命令和允许访问的路径写入 MCP 客户端配置；先用最小目录或只读资源验证工具行为，再逐步扩大权限。

## 实际例子
**官方示例 →** 给 MCP 客户端增加持久记忆。 **输入 →** Memory server 包和客户端配置。 **操作 →** 运行 `npx -y @modelcontextprotocol/server-memory`，并把相同 command/args 加入 mcpServers。 **输出 →** 客户端可以创建和查询知识图谱式记忆。

    npx -y @modelcontextprotocol/server-memory
    uvx mcp-server-git

## 适合谁
学习 MCP 协议、开发 MCP 客户端/服务器或验证宿主集成的开发者。

## 局限 / 注意点
仓库定位是参考实现，不是所有服务器的生产目录；部分旧服务器已归档或被官方第三方实现替代。Filesystem、Git 等工具必须限制路径和写权限，第三方服务器也不等于官方审核。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-10-01 | 12 | +50 | 90805 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/MCP|MCP]]

## 相关日报
- [[Daily/2026/10/2026-10-01|2026-10-01]]

