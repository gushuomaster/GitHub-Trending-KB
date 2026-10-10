---
type: github-project
repo: "BerriAI/litellm"
url: "https://github.com/BerriAI/litellm"
first_seen: 2026-10-10
last_seen: 2026-10-10
trending_count: 1
language: "Python"
total_stars: 60651
forks: 12186
stars_today: 95
github_rank: 7
fetched_at: "2026-10-10T08:02:00+08:00"
category: ["AI","Developer Tools"]
tags: ["github/ai","github/developer-tools"]
---
# BerriAI/litellm

## 一句话说明
用一套 OpenAI 兼容接口接入 100 多种 LLM，并在团队网关统一处理密钥、路由、预算、护栏与日志。

**官方描述：** The fastest, litest AI Gateway. Rust core with Python SDK. Call 100+ LLM APIs in OpenAI (or native) format with cost tracking, guardrails, load balancing, and logging [Bedrock, Azure, OpenAI, Anthropic, OpenAI, VertexAI, vLLM, Nvidia NIM]

## 它能做什么
- 通过 Python SDK 或代理网关统一调用 OpenAI、Anthropic、Gemini、Bedrock 等模型
- 提供 OpenAI 兼容的 chat、responses、embeddings、images、audio 等端点
- 网关支持虚拟密钥、费用追踪、负载均衡、护栏和管理面板
- 还能代理 A2A Agent 与 MCP 工具调用

## 怎么利用
官方代理入门：安装 `litellm[proxy]` 并启动 `litellm --model gpt-4o`，把现有 OpenAI 客户端的 `base_url` 改为 `http://0.0.0.0:4000`；应用保持原调用格式，输出由网关转发的模型响应并集中记录用量。

## 实际例子
**场景：** 把一个同时调用 OpenAI 与 Anthropic 的内部应用改为经统一网关出站。

**输入：** 现有 OpenAI SDK 调用、各模型提供商密钥和目标模型名。

**操作：** 启动 LiteLLM proxy，把客户端 `base_url` 指向本地 4000 端口，并由网关配置模型路由、虚拟密钥和预算。

**结果：** 应用继续使用 OpenAI 格式获得模型响应，团队则在一个入口追踪费用、日志与故障切换。

## 关键命令
```sh
uv tool install 'litellm[proxy]'
litellm --model gpt-4o
```

## 适合谁
需要统一多家模型调用、预算与访问控制的平台工程师，以及维护多模型应用的 AI 团队。

## 局限 / 注意点
必须妥善管理各提供商密钥、预算和日志；统一格式不能消除模型语义差异。README 还提醒 `litellm` 与 `litellm-core` 文件重叠，同一环境只安装一种 SDK 分发。

## Trending 历史
- 2026-10-10：#7 · Stars Today：95 · Total Stars：60651 · Forks：12186

## 相关主题
- [[Topics/AI]]
- [[Topics/Developer Tools]]

## 相关日报
- [[Daily/2026/10/2026-10-10|2026-10-10]]

## GitHub 原始链接
https://github.com/BerriAI/litellm

## 官方资料核对
- 核对日期：2026-10-10
- README：https://github.com/BerriAI/litellm/blob/main/README.md
- README blob SHA：141e8232de818600414b7c2a69fb4f4c1d42db67
