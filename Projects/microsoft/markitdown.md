---
type: github-project
repo: "microsoft/markitdown"
url: "https://github.com/microsoft/markitdown"
first_seen: 2026-09-09
last_seen: 2026-09-09
trending_count: 1
language: "Python"
stars_today: 2047
category: ["AI", "RAG", "Developer-Tools"]
tags: ["ai", "rag", "developer-tools"]
topics: ["AI", "RAG", "Developer-Tools"]
---
# microsoft/markitdown

## 一句话说明
把 PDF、Word、Excel、PowerPoint、HTML、图片和音频等文件转成便于 LLM、RAG 和文本分析使用的 Markdown。

**当前官方描述：** Python tool for converting files and office documents to Markdown.

## 它能做什么
- 通过统一 Python API 或 CLI 转换多种办公和媒体格式。
- 保留标题、列表、表格、链接等对文本理解有用的结构。
- 支持插件和可选依赖，并可通过 MCP 接入 Agent 工作流。

## 怎么利用
根据需要安装对应 extras，把本地文件或受控数据流传给转换器；检查生成的 Markdown 后再切块、索引或送入摘要/RAG。

## 实际例子
**官方 CLI 用法 →** 输入一个 PPTX 或 PDF，运行 MarkItDown 并重定向输出；得到可检索的 Markdown 文本，可继续进入知识库索引。

## 关键命令
```text
pip install 'markitdown[all]'
markitdown document.pdf > document.md
```

## 适合谁
需要为 RAG、搜索、摘要或内容迁移批量提取文档文本的数据与 AI 工程人员。

## 局限 / 注意点
目标是机器可读内容，不保证高保真还原版式；`convert()` 可访问本地路径和远程 URI，不可信输入必须限制路径、协议和网络目的地。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-09 | 9 | 2047 | 未保存 | 归档顺序；统计来自原有快照或未保存 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/RAG|RAG]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-09|2026-09-09]]

## GitHub 原始链接
https://github.com/microsoft/markitdown

## 官方资料核对
- 核对日期：2026-10-08
- README：https://github.com/microsoft/markitdown/blob/main/README.md
- README blob SHA：fa33f6b343cf54de037cfdb82337cc70d5fbc47b
- 说明：项目卡反映核对日的当前官方资料；不声称这些能力与 2026-09-09 的历史版本完全相同。
