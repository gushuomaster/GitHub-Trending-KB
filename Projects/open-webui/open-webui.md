---
type: github-project
repo: "open-webui/open-webui"
url: "https://github.com/open-webui/open-webui"
first_seen: "2026-10-13"
last_seen: "2026-10-13"
trending_count: 1
language: "Python"
total_stars: 154969
forks: 22635
stars_today: 157
github_rank: 5
fetched_at: "2026-10-13T08:05:00+08:00"
category: ["AI", "Self-Hosted", "Developer-Tools"]
tags: ["github/ai", "github/self-hosted", "github/rag"]
topics: ["AI", "Self-Hosted", "Developer-Tools"]
---
# open-webui/open-webui

## 一句话说明
在自己控制的服务器或电脑上搭建统一 AI 聊天工作台，同时连接本地 Ollama 与多种 OpenAI-compatible 云端模型，并集中管理用户、知识库和工具。

**官方描述：** User-friendly AI Interface (Supports Ollama, OpenAI API, ...)

## 它能做什么
- 通过同一网页界面连接 Ollama、LM Studio、vLLM、OpenRouter 等本地或云端模型服务。
- 用角色、用户组和细粒度权限为团队分配模型、知识库与工具访问权。
- 把自定义指令、工具和知识包装成专用 Agent，并通过 MCP、OpenAPI 或插件接入外部系统。
- 以 Docker、Python、Kubernetes 等方式自托管，支持离线环境和持久化数据卷。

## 怎么利用
在一台内网服务器上运行 Open WebUI，把本机 Ollama 或公司的 OpenAI-compatible endpoint 配进去；管理员建立研发与客服用户组，分别授权模型和知识库。成员在浏览器中选择对应 Agent、上传资料并对话，最终得到可审计、可集中管理的团队 AI 工作入口。

## 实际例子
**官方 Docker 入门 → 场景：** 给本机 Ollama 加一个持久化网页界面。**输入：** 已运行的 Ollama 服务和 Docker。**操作：** 启动官方容器并挂载 `open-webui` 数据卷。**输出：** 浏览器访问 `http://localhost:3000`，可在同一界面选择模型、创建会话和保存历史。

## 关键命令
```sh
docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway \
  -v open-webui:/app/backend/data --name open-webui --restart always \
  ghcr.io/open-webui/open-webui:main
```

## 适合谁
想把本地模型与多家 API 统一交给团队使用的 AI 平台管理员、研发团队和需要私有知识问答入口的组织。

## 局限 / 注意点
它提供的是界面与编排层，推理模型、GPU 和第三方 API 仍需单独部署或付费。生产环境应固定镜像版本、配置 HTTPS/备份/访问控制，并审查社区插件和工具权限；README 特别要求持久化数据卷，否则重建容器可能丢失数据库。

## Trending 历史
- 2026-10-13：#5 · Stars Today：157 · Total Stars：154969 · Forks：22635

## 相关主题
[[Topics/AI|AI]] · [[Topics/Self-Hosted|Self-Hosted]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/10/2026-10-13|2026-10-13]]

## GitHub 原始链接
https://github.com/open-webui/open-webui

## 官方资料核对
- 核对日期：2026-10-13
- README：https://github.com/open-webui/open-webui/blob/main/README.md

