---
type: github-project
repo: "jundot/omlx"
url: "https://github.com/jundot/omlx"
first_seen:
last_seen:
recommend_score: 9.2
trending_count: 0
stars_today:
category: ["AI", "Developer Tools", "Local LLM"]
tags: ["github/local-llm", "github/mlx", "github/apple-silicon", "github/inference", "github/kv-cache"]
topics: ["Local-LLM", "MLX", "Developer-Tools"]
documentation_checked_at: "2026-10-15"
history_status: no_confirmed_trending_snapshot
---
# jundot/omlx

## 一句话说明
oMLX 是面向 Apple Silicon 的本地模型推理服务器，用 continuous batching、分层 KV Cache 和 OpenAI 兼容接口同时服务 LLM、视觉模型、Embedding 与 Reranker。

## 它能做什么
- 通过 continuous batching 并发处理请求，并用前缀共享与 Copy-on-Write 降低重复计算。
- 把 KV Cache 分为 RAM 热层与 SSD 冷层，在长会话和重复前缀中复用缓存。
- 自动发现模型目录中的 LLM、VLM、OCR、Embedding 和 Reranker，并提供 Web 管理界面。
- 暴露 OpenAI 兼容的 `/v1` API，可连接 Codex、OpenCode、OpenClaw 等客户端。

## 怎么利用
在 Apple Silicon Mac 上安装官方 DMG 或 Homebrew 包，启动后台服务并把模型放入配置目录。输入是模型文件与 OpenAI 格式请求，oMLX 负责模型加载、批处理和缓存管理，输出本地 API 响应、管理面板指标和模型运行状态。

## 实际例子
**官方 Quickstart →** 执行 `omlx start` 启动服务，把量化模型放在 `~/.omlx/models`；Coding Agent 连接 `http://localhost:8000/v1` 后持续发送长会话请求。oMLX 在相同前缀上复用 KV Cache，并通过管理面板显示模型、批次和性能状态。

## 关键命令
```sh
brew tap jundot/omlx https://github.com/jundot/omlx
brew install jundot/omlx/omlx
omlx start
```

## 适合谁
希望在 Mac 上为个人或内网工具提供本地、OpenAI 兼容推理服务，并需要多模型管理、并发批处理或长上下文缓存的 AI 开发者。

## 局限 / 注意点
- 仅支持 Apple Silicon，并要求 macOS 15+ 与 Python 3.11–3.13。
- 部分模型的原生 Metal kernel 需要完整 Xcode；缺少 kernel 时会回退到更慢且更耗内存的路径。
- SSD 冷缓存的收益取决于命中率、I/O 延迟、容量和写放大，应使用真实工作负载测试。
- 实验性多 Mac 推理有严格的网络、SSH、运行时一致性和物理硬件验证要求。

## Trending 历史
当前没有由有效 Daily 与 `Index/projects.jsonl` 共同确认的上榜日期。旧卡中的 2026-09-15 条目来自已撤销日报，不能作为可信 Trending 快照。

## 相关主题
[[Topics/Local-LLM|Local-LLM]] · [[Topics/MLX|MLX]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
暂无已确认的相关日报。

## GitHub 原始链接
https://github.com/jundot/omlx

## 官方资料复核（2026-10-15）
- README：https://github.com/jundot/omlx/blob/main/README.md
- README blob SHA：`9a9dcef14528cca00a994abeb6853dabdfaeae98`

