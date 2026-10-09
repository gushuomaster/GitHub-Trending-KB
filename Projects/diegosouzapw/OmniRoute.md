---
type: github-project
repo: "diegosouzapw/OmniRoute"
url: "https://github.com/diegosouzapw/OmniRoute"
first_seen: 2026-09-11
last_seen: 2026-09-11
trending_count: 1
category: ["AI","Gateway","Developer-Tools"]
topics: ["AI","Gateway","Developer-Tools"]
---
# diegosouzapw/OmniRoute

## 一句话说明
把多家免费和付费模型供应商统一成一个 OpenAI 兼容端点，并按额度、健康状态和策略自动路由。

## 它能做什么
- 通过单一 API 连接大量模型与供应商
- 按配额、成本、延迟或可用性选择路由并自动 fallback
- 兼容 Claude Code、Codex、Cursor、OpenCode 等客户端
- 提供上下文压缩、MCP/A2A 接入和本地 Dashboard

## 怎么利用
官方零配置示例：安装并启动后向 `http://localhost:20128/v1/chat/completions` 发送 OpenAI 格式请求，模型写 `auto`，网关选择当前可用的免费后端并在失败时切换。

## 实际例子
**官方材料中的工作流：** 官方零配置示例：安装并启动后向 `http://localhost:20128/v1/chat/completions` 发送 OpenAI 格式请求，模型写 `auto`，网关选择当前可用的免费后端并在失败时切换。

## 关键命令
```bash
curl http://localhost:20128/v1/chat/completions -H "Content-Type: application/json" -d '{"model":"auto","messages":[{"role":"user","content":"hello"}]}'
```

## 适合谁
需要把多个模型供应商接入同一客户端、并管理额度与故障切换的 AI 应用开发者。

## 局限 / 注意点
- 集中保存多家 API key 会扩大凭据风险；免费额度、模型名称和上游协议随时可能变化，自动路由也不能保证输出一致性或服务连续性。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-11 | 11 | 591 | 未保存 | 语言不限归档；统计见说明 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Gateway|Gateway]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-11|2026-09-11]]

## GitHub 原始链接
https://github.com/diegosouzapw/OmniRoute

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/diegosouzapw/OmniRoute/blob/main/README.md
- 说明：项目卡反映核对日的当前官方资料，不声称这些能力与 2026-09-11 的历史版本完全相同。
