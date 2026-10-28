---
type: github-project
repo: "HKUDS/DeepTutor"
url: "https://github.com/HKUDS/DeepTutor"
first_seen: "2026-10-28"
last_seen: "2026-10-28"
trending_count: 1
github_rank: 9
stars_today: 1598
total_stars: 45830
forks: 5748
language: "Python"
fetched_at: "2026-10-28T08:05:36+08:00"
documentation_checked_at: "2026-10-28"
stats_as_of: "2026-10-28"
snapshot_status: live
category: ["Education", "Personalized Learning", "RAG"]
topics: ["AI Tutor", "Knowledge Base", "Learning", "RAG"]
status: active
---
# HKUDS/DeepTutor

## 一句话说明
把对话辅导、题目求解、测验、研究、可视化、阅读和长期掌握练习放进同一学习工作区，并让个人资料、知识库和记忆在这些流程间复用。

## 它能做什么
- 在 Chat、问答、测验、研究、Solve、课程学习、Mastery Path、沉浸阅读和音频概览间共享会话上下文。
- 用 LlamaIndex、PageIndex、GraphRAG、LightRAG、Obsidian 等多种引擎建立版本化知识库并返回可检查引用。
- 把书籍、笔记、题库、写作草稿、任务看板和三层可审计记忆组织成持续学习空间。
- 通过 MCP、Skills、CLI 应用和外部 Agent 扩展工具，也支持多用户授权与隔离工作区。

## 怎么利用
先用 Docker 或 PyPI 在本机启动 DeepTutor，配置一个可用语言模型；把教材、论文或文档加入知识库并选定学习工作区。输入是学习目标、资料和问题，DeepTutor 通过检索、问答、测验与记忆记录学习过程，最终得到带引用的讲解、可继续练习的题目、笔记和可恢复的学习进度。

## 实际例子
**官方能力对应场景 → 场景：** 用一本课程讲义建立可持续复习空间。**输入：** PDF 讲义、一个模型 Provider 和“掌握注意力缩放原因”的目标。**操作：** 启动 Web 应用，在 Knowledge Center 建立知识库并添加讲义；在 Chat 中引用知识库提问，再把关键解释写入 Notebook，并从题库启动 Practice。**输出：** 带资料引用的解释、可复习笔记、练习题和后续学习进度。

    docker run --rm --name deeptutor -p 127.0.0.1:3782:3782 \
      -v deeptutor-data:/app/data ghcr.io/hkuds/deeptutor:latest

## 适合谁
需要用自己的课程资料做问答、复习和知识检索的学生与研究者，以及要自托管多用户学习平台的教育技术团队。

## 局限 / 注意点
- 完整应用仍需配置模型，知识库还可能需要 Embedding、搜索或解析服务；不同 Provider 会产生费用和数据传输。
- 功能面很宽，部署与权限配置复杂。启用多用户、外部 Agent、MCP、IM 渠道或代码执行前，应设置最小授权、隔离工作区、备份和审计；浏览器语音的部分适配器还要求 FFmpeg。
- Docker 示例把端口绑定到本机回环地址；改为远程暴露时需额外配置认证、反向代理和网络边界。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-28 | 9 | 1598 | 45830 | 5748 | GitHub Today live snapshot |

## 相关主题
[[Topics/AI-Tutor|AI-Tutor]] · [[Topics/Knowledge-Base|Knowledge-Base]] · [[Topics/Learning|Learning]] · [[Topics/RAG|RAG]]

## 相关日报
- [[Daily/2026/10/2026-10-28|2026-10-28]]

## GitHub 原始链接
https://github.com/HKUDS/DeepTutor

## 官方资料复核（2026-10-28）
- README：https://github.com/HKUDS/DeepTutor/blob/main/README.md
- README blob SHA：`57e6ece07f3fccbbe97782f28c5eed65b5befbba`
- 用户文档：https://deeptutor.info/

