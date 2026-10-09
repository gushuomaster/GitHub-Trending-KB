---
type: github-project
repo: "pascalorg/editor"
url: "https://github.com/pascalorg/editor"
first_seen: 2026-09-10
last_seen: 2026-09-10
trending_count: 1
category: ["3D","Architecture","AI","Developer-Tools"]
topics: ["3D","Architecture","AI"]
---
# pascalorg/editor

## 一句话说明
本地优先的 3D 建筑编辑器，既能在浏览器中建模，也能通过 CLI 和 MCP 让 Agent 操作场景。

## 它能做什么
- 用 React Three Fiber 与 WebGPU 编辑墙体、楼板、屋顶、门窗和物件
- 将项目保存在本地 SQLite，并提供撤销、持久化和多种查看模式
- 通过认证的 MCP 服务和 `pascal-3d` Skill 让 Agent创建、检查并修改建筑场景

## 怎么利用
官方本地流程：运行 `npx @pascal-app/cli editor` 启动编辑器和 MCP 服务，再让 Agent 通过 `pascal mcp connect` 创建房间、布置门窗并在浏览器查看结果。

## 实际例子
**官方材料中的工作流：** 官方本地流程：运行 `npx @pascal-app/cli editor` 启动编辑器和 MCP 服务，再让 Agent 通过 `pascal mcp connect` 创建房间、布置门窗并在浏览器查看结果。

## 关键命令
```bash
npx @pascal-app/cli editor
```


## 适合谁
需要在本地设计建筑场景、开发 3D 建筑工具或让 Agent 操作空间模型的建筑技术人员与开发者。

## 局限 / 注意点
- 首次启动会下载并校验 Web 编辑器运行时；同一服务要求只连接一个活跃 Agent 客户端，并行工作需分别设置 `PASCAL_HOME`。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-10 | 4 | 未保存 | 未保存 | 语言不限归档；统计见说明 |

## 相关主题
[[Topics/3D|3D]] · [[Topics/Architecture|Architecture]] · [[Topics/AI|AI]]

## 相关日报
- [[Daily/2026/09/2026-09-10|2026-09-10]]

## GitHub 原始链接
https://github.com/pascalorg/editor

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/pascalorg/editor/blob/main/README.md
- 说明：项目卡反映核对日的当前官方资料，不声称这些能力与 2026-09-10 的历史版本完全相同。
