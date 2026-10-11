---
type: github-project
repo: "hugohe3/ppt-master"
url: "https://github.com/hugohe3/ppt-master"
first_seen: 2026-10-11
last_seen: 2026-10-11
trending_count: 1
language: "Python"
total_stars: 59418
forks: 4679
stars_today: 461
github_rank: 9
fetched_at: "2026-10-11T08:02:00+08:00"
category: ["AI", "Developer-Tools"]
topics: ["AI", "Developer-Tools"]
---
# hugohe3/ppt-master

## 一句话说明
把 PDF、DOCX、网页、图片或主题交给 AI Agent，生成真正可编辑的原生 PowerPoint，而不是一组扁平图片。

**官方描述：** AI turns documents or topics into real, native PowerPoint decks—with native shapes, transitions and animations, data-backed charts and tables on demand, audio narration from speaker notes, and support for your own .pptx templates. · by Hugo He

## 它能做什么
- 从文档或主题生成带原生形状、连接线、公式、动画和讲者备注的 `.pptx`。
- 可按需生成数据支撑的原生图表/表格，并继续在 PowerPoint 中编辑数据。
- 可提炼品牌模板、复用已有 `.pptx` 设计，或为现有 deck 添加转场、动画和配音。
- 流水线主要在本机运行，除模型调用外不依赖专有云端 PPT 服务。

## 怎么利用
把 PDF、DOCX、网页、图片或已有 `.pptx` 放进 `projects/`，在具备文件和命令权限的 Agent 中提出页数、受众、模板与输出要求；工作流分析材料、生成页面、渲染预览并导出可编辑 `.pptx`。

## 实际例子
**官方 Create 流程 →** 把 `report.pdf` 放入 `projects/q3-report/sources/`，在 Agent 中说“Please create a PPT from .../report.pdf”；工具分析材料、确认设计规格并导出到 `exports/<name>_<timestamp>.pptx`，同时生成 `svg_final/` 页面预览。

## 关键命令
```bash
git clone https://github.com/hugohe3/ppt-master.git
cd ppt-master
pip install -r requirements.txt
```

## 适合谁
需要把研究报告、财务材料、课程或品牌模板快速转成可继续修改演示稿的咨询顾问、分析师、教师和内容团队。

## 局限 / 注意点
需要 Python 3.10+、Agent 宿主和模型额度；README 明确不保证一次生成就是最终稿，模型质量决定上限，用户仍需校对事实、版式和授权素材。

## Trending 历史
- 2026-10-11：#9 · Stars Today：461 · Total Stars：59418 · Forks：4679

## 相关主题
[[Topics/AI|AI]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/10/2026-10-11|2026-10-11]]

## GitHub 原始链接
https://github.com/hugohe3/ppt-master

## 官方资料核对
- 核对日期：2026-10-11
- README：https://github.com/hugohe3/ppt-master/blob/HEAD/README.md
- README blob SHA：d4f0a335a4d6a017148ea239e152c7ad16142505

