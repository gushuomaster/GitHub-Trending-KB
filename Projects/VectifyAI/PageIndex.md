---
repo: "VectifyAI/PageIndex"
url: "https://github.com/VectifyAI/PageIndex"
first_seen: 2026-09-30
last_seen: 2026-09-30
trending_count: 1
github_rank: 11
stars_today: 835
total_stars: 37330
forks: 3262
language: Python
fetched_at: "2026-09-30T08:04:00+08:00"
category: ["AI", "RAG", "Document Processing"]
tags: ["rag", "pdf", "tree-index", "retrieval", "document-ai"]
topics: ["AI", "RAG"]
status: active
---
# VectifyAI/PageIndex

## 一句话说明
把长文档组织成层级树，让 LLM 沿目录和上下文推理定位相关页面，而不是先切块、做向量嵌入和相似度搜索。

## 它能做什么
- 为 PDF 建立可解释的层级树索引，不依赖向量数据库。
- 让 Agent 根据问题推理遍历树并返回可追踪引用。
- 本地模式使用自己的模型密钥完成索引、检索与问答。
- Cloud 模式补充 OCR、图像理解、托管存储、多文档文件系统与 MCP。

## 怎么利用
安装 SDK 后提交一份长 PDF，选择成本较低的索引模型生成树，再用更强的 chat 模型回答问题。应用保存 doc_id，后续问题复用同一索引；需要扫描件或图片密集材料时切换到 Cloud。

## 实际例子
**官方 Quickstart 对应场景 →** 从年度报告中查 2023 年营业利润率。 **输入 →** report.pdf 和明确问题。 **操作 →** PageIndexClient 提交文档生成树索引，再调用 chat 搜索相关章节。 **输出 →** 结合文档上下文的答案与可追踪引用，而不是一组不透明的相似向量片段。

    pip install -U pageindex

## 适合谁
处理财报、合同、监管文件、技术手册、医学文献或教材等长文档的 RAG/Agent 开发者。

## 局限 / 注意点
本地开源模式主要面向文本型 PDF；扫描件和图片理解需要 Cloud。检索本身仍依赖 LLM 推理，会产生 API 成本、延迟和模型错误；官方 benchmark 不能代替在自己的文档和问题集上做引用正确性评测。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-30 | 11 | +835 | 37330 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/RAG|RAG]]

## 相关日报
- [[Daily/2026/09/2026-09-30|2026-09-30]]

