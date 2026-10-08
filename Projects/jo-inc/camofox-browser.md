---
type: github-project
repo: "jo-inc/camofox-browser"
url: "https://github.com/jo-inc/camofox-browser"
first_seen: 2026-09-09
last_seen: 2026-09-09
trending_count: 1
language: "JavaScript"
category: ["AI", "Agent", "Browser-Automation"]
tags: ["ai", "agent", "browser-automation"]
topics: ["AI", "Agent", "Browser-Automation"]
---
# jo-inc/camofox-browser

## 一句话说明
为 AI Agent 提供抗检测的无头浏览器服务，用稳定元素引用和精简可访问性快照执行网页操作。

**当前官方描述：** Stealth headless browser for AI agents — bypass Cloudflare, bot detection, and anti-scraping. Drop-in Puppeteer/Playwright replacement.

## 它能做什么
- 使用 Camoufox 与 C++ 层抗检测能力处理常见 bot 检测。
- 把页面元素映射为稳定的 `e1`、`e2` 引用，支持点击、输入和导航。
- 按会话隔离 cookies/storage，并支持导入 Cookie 和截图。

## 怎么利用
启动独立服务或 OpenClaw 插件，为每个任务建立隔离会话；Agent 先获取精简快照，再用元素引用操作页面，最后保存结构化结果或截图。

## 实际例子
**官方工具流程 →** 创建标签页、调用 snapshot 获取 `e1/e2` 元素引用，再执行 click/type/navigate；输出浏览结果而无需把整页 HTML 放入上下文。

## 关键命令
```text
npx @askjo/camofox-browser
```

## 适合谁
需要让 Agent 在受控环境中执行网页检索、表单或登录态浏览，并关注上下文开销的自动化开发者。

## 局限 / 注意点
抗检测不代表所有站点都可稳定访问，也不应绕过网站条款；导入 Cookie 和远程服务会扩大凭据风险，需限制会话、域名和遥测配置。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-09 | 10 | 未保存 | 未保存 | 归档顺序；统计来自原有快照或未保存 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Agent|Agent]] · [[Topics/Browser-Automation|Browser-Automation]]

## 相关日报
- [[Daily/2026/09/2026-09-09|2026-09-09]]

## GitHub 原始链接
https://github.com/jo-inc/camofox-browser

## 官方资料核对
- 核对日期：2026-10-08
- README：https://github.com/jo-inc/camofox-browser/blob/main/README.md
- README blob SHA：85bab6cc08794b7770f50734a41c4e43bd4b1a17
- 说明：项目卡反映核对日的当前官方资料；不声称这些能力与 2026-09-09 的历史版本完全相同。
