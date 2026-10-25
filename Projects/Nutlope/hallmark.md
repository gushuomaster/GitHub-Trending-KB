---
type: github-project
repo: "Nutlope/hallmark"
url: "https://github.com/Nutlope/hallmark"
first_seen: "2026-10-25"
last_seen: "2026-10-25"
trending_count: 1
github_rank: 4
stars_today: 455
total_stars: 32126
forks: 1648
language: "CSS"
fetched_at: "2026-10-25T08:11:52+08:00"
documentation_checked_at: "2026-10-25"
stats_as_of: "2026-10-25"
snapshot_status: live
category: ["Web Design", "Agent Skill", "Frontend"]
topics: ["Web Design", "Agent Skill", "UI Audit", "Frontend"]
status: active
---
# Nutlope/hallmark

## 一句话说明
给 Coding Agent 一套可执行的网页设计语言与质量检查流程，减少千篇一律的 AI 生成界面并产出可交付页面。

## 它能做什么
- 提供 48 套主题和自定义设计语言，用于生成网站或单页界面。
- 先做内容与资产预检，再按 hero-first 流程实现页面。
- 用 `sloplint` 检查常见 AI 设计痕迹，并在 8 种视口宽度渲染验证。
- 支持新页面设计、现有页面审计、重设计、润色和独立上下文复核。

## 怎么利用
用 `npx skills` 将 Hallmark 安装到 Claude Code、Cursor 或 Codex，在包含产品文案和真实素材的前端项目中调用 `/hallmark`。它会选择或创建设计语言、实现自包含的 HTML/CSS 页面，再通过 lint 与多视口渲染发现问题，输出可在浏览器打开并继续迭代的页面文件。

## 实际例子
**官方工作流 → 场景：** 为一个 SaaS 产品制作落地页。**输入：** 产品名称、价值主张、真实功能信息和品牌素材。**操作：** 安装 Skill，要求 `/hallmark` 构建落地页，再执行渲染检查。**输出：** 具有一致视觉语言的自包含页面，以及指出布局、文案或响应式问题的检查结果。

```bash
npx skills add nutlope/hallmark -g
sloplint --render
```

## 适合谁
希望 Agent 直接制作或审查营销页、产品页和作品集，同时需要可重复视觉标准的设计工程师与前端团队。

## 局限 / 注意点
- 默认更适合从头设计；修改既有设计时要明确指出要保留的系统和约束。
- 需要 Node.js 18+；渲染检查还需要 Chrome 与 `puppeteer-core`。外部图片仍须核查许可证和署名，Agent 也不能替产品方编造事实。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-25 | 4 | 455 | 32126 | 1648 | GitHub Today live snapshot |

## 相关主题
[[Topics/Web-Design|Web-Design]] · [[Topics/Agent-Skill|Agent-Skill]] · [[Topics/UI-Audit|UI-Audit]] · [[Topics/Frontend|Frontend]]

## 相关日报
- [[Daily/2026/10/2026-10-25|2026-10-25]]

## GitHub 原始链接
https://github.com/Nutlope/hallmark

## 官方资料复核（2026-10-25）
- README：https://github.com/Nutlope/hallmark/blob/main/README.md
- README blob SHA：`00a841d63f4bcdc9cdea6f0ec42fc87150f171f5`
- Skill blob SHA：`d27771723e827baa5e2b34d01492783a42df9174`

