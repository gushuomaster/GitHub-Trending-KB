---
type: github-project
repo: "volcengine/OpenViking"
url: "https://github.com/volcengine/OpenViking"
first_seen:
last_seen:
recommend_score: 9.7
trending_count: 0
stars_today:
category: ["AI", "Agent", "RAG", "Context Engineering"]
tags: ["github/agent", "github/rag", "github/memory", "github/context", "github/python"]
topics: ["Agent", "RAG", "Memory", "Context-Engineering"]
documentation_checked_at: "2026-10-15"
history_status: no_confirmed_trending_snapshot
---
# volcengine/OpenViking

## 一句话说明
OpenViking 是面向 AI Agent 的 Context Database，把知识库、跨会话记忆和 Skills 统一组织为可检索、可浏览并能持续更新的上下文资源。

## 它能做什么
- 用 `viking://` 虚拟文件系统统一管理资源、记忆与 Skills，并提供目录、树和 URI 级浏览。
- 把长内容组织为不同信息层级，按任务返回概览、摘要或细节，减少无关上下文进入模型。
- 支持语义查找、关键词检索和可观察的检索路径，便于追踪 Agent 使用了哪些证据。
- 提供 Python、Go、TypeScript SDK、HTTP API 和多种 Coding Agent 的记忆插件。

## 怎么利用
先用初始化向导配置 Embedding、VLM 与工作目录并启动服务，再用 `ov add-resource` 导入仓库、文档或其他资源。输入内容经解析和索引后写入 `viking://resources`；Agent 通过 CLI、SDK 或插件检索相关 URI，并可把会话经验沉淀为后续任务可复用的记忆。

## 实际例子
**官方 Quick start →** 导入 OpenViking 自身仓库，轮询任务完成后用 `ov tree` 查看目录，再以 `ov find "what is openviking"` 做语义检索、以 `ov grep` 定位文档原文。输出包含可继续检查的 `viking://` URI，而不是只有不可追溯的摘要。

## 关键命令
```sh
uv tool install openviking --upgrade && openviking-server init
ov add-resource https://github.com/volcengine/OpenViking
ov find "what is openviking"
```

## 适合谁
需要为长任务 Agent 统一管理项目知识、历史决策、会话记忆与工具说明，并要求检索过程可追踪的 Agent 平台团队和知识工程师。

## 局限 / 注意点
- 自托管初始化需要 Python 3.10+、Embedding 模型和 VLM；外部模型服务会引入凭据、费用与数据边界问题。
- 检索和自动沉淀记忆仍可能引入过期、错误或越权内容，应设计来源、保留期、权限与删除机制。
- 主项目采用 AGPLv3；CLI、示例和第三方目录使用不同许可证，闭源或托管集成前要逐组件核对。
- 项目处于快速演进期，存储格式、插件和 API 兼容性应通过升级测试验证。

## Trending 历史
当前没有由有效 Daily 与 `Index/projects.jsonl` 共同确认的上榜日期。旧卡中的 2026-09-15 条目来自已撤销日报，不能作为可信 Trending 快照。

## 相关主题
[[Topics/Agent|Agent]] · [[Topics/RAG|RAG]] · [[Topics/Memory|Memory]] · [[Topics/Context-Engineering|Context-Engineering]]

## 相关日报
暂无已确认的相关日报。

## GitHub 原始链接
https://github.com/volcengine/OpenViking

## 官方资料复核（2026-10-15）
- README：https://github.com/volcengine/OpenViking/blob/main/README.md
- README blob SHA：`89cc3a7c51a2fc83bc62cdff7832fd082f316ccb`
