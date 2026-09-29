---
repo: "dream-num/univer"
url: "https://github.com/dream-num/univer"
first_seen: 2026-09-23
last_seen: 2026-09-29
trending_count: 7
github_rank: 8
stars_today: 1099
total_stars: 21235
forks: 1801
language: TypeScript
fetched_at: "2026-09-29T08:05:00+08:00"
category: ["Developer Tools", "Office", "AI"]
tags: ["office", "spreadsheet", "docs", "slides", "pdf", "typescript", "agent"]
topics: ["Developer-Tools", "Agent"]
status: active
---
# dream-num/univer

## 一句话说明
可嵌入产品的开源 Office runtime/SDK，把表格、文档、幻灯片、Canvas、关系表与 PDF 放在同一运行时中。

## 它能做什么
- 在浏览器嵌入 Sheets、Docs 与 Slides 编辑能力。
- 通过 Facade API 结构化操作工作簿、公式、格式、校验和批注。
- 支持 Node.js headless 处理与服务端自动化。
- 用插件或预设模式组合功能，并可作为 Agent 的 Office 执行层。

## 怎么利用
前端使用 Preset 快速创建工作簿，或在 Node.js 中 headless 读取和修改表格；Agent 负责根据自然语言生成结构化操作，用户在编辑器中复核结果。

## 实际例子
**场景 →** AI 修正财务工作簿。 **输入 →** 销售数据和“新增毛利率列、修复公式并标记异常值”的指令。 **操作 →** Agent 调用 Univer Facade API 写入公式、条件格式和数据校验。 **输出 →** 浏览器中可继续编辑和人工确认的工作簿。

```bash
pnpm add @univerjs/presets @univerjs/preset-sheets-core
```

## 适合谁
在线办公、文档自动化、AI Office 与嵌入式表格产品团队。

## 局限 / 注意点
Sheets 是当前最成熟的表面；协作、导入导出、图表、透视表等部分能力属于 Univer Pro。各 `@univerjs/*` SDK 包应保持同一协调版本线。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-23 | 3 | +202 | 15375 |
| 2026-09-24 | 6 | +1140 | 16261 |
| 2026-09-25 | 3 | +1060 | 17449 |
| 2026-09-28 | 8 | +895 | 20812 |
| 2026-09-29 | 8 | +1099 | 21235 |


## 历史归档补记
- 2026-09-25：GitHub Trending #3；来源为语言不限归档，Stars Today、当日总 Stars 与 Forks 未保存。
- 2026-09-26：GitHub Trending #6；来源为语言不限归档，Stars Today、当日总 Stars 与 Forks 未保存。
- 2026-09-27：GitHub Trending #4；来源为语言不限归档，Stars Today、当日总 Stars 与 Forks 未保存。

## 相关主题
[[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Agent|Agent]]

## 相关日报
- [[Daily/2026/09/2026-09-23|2026-09-23]]
- [[Daily/2026/09/2026-09-24|2026-09-24]]
- [[Daily/2026/09/2026-09-25|2026-09-25]]
- [[Daily/2026/09/2026-09-28|2026-09-28]]
- [[Daily/2026/09/2026-09-26|2026-09-26]]
- [[Daily/2026/09/2026-09-27|2026-09-27]]
- [[Daily/2026/09/2026-09-29|2026-09-29]]
