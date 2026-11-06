---
type: github-project
repo: "Usagi-org/ai-goofish-monitor"
url: "https://github.com/Usagi-org/ai-goofish-monitor"
first_seen: "2026-11-04"
last_seen: "2026-11-06"
trending_count: 2
github_rank: 4
stars_today: 240
total_stars: 17511
forks: 2941
language: "Python"
fetched_at: "2026-11-06T08:10:55+08:00"
documentation_checked_at: "2026-11-06"
stats_as_of: "2026-11-06"
snapshot_status: "live"
category: ["Monitoring","AI Automation"]
tags: ["playwright","xianyu","multimodal","notification"]
topics: ["Monitoring","Automation","Multimodal-AI"]
status: active
---
# Usagi-org/ai-goofish-monitor

## 一句话说明
用 Playwright 持续搜索闲鱼商品，再按关键词、价格、区域和多模态 AI 标准筛选，并通过 Web 管理界面和多渠道通知推送匹配结果。

## 它能做什么
- 为多个任务分别配置关键词、价格、新发布时间、区域、账号和 AI Prompt。
- 抓取商品详情与图片后用支持图像的 OpenAI 兼容模型分析是否推荐。
- 用 Cron 定时执行，支持账号/代理轮换、失败重试和保护暂停。
- 通过 ntfy、企业微信、Bark、Telegram 或 Webhook 通知，并在 SQLite 中保存结果和价格历史。

## 怎么利用
通过 Docker 启动 Web UI，配置支持图片输入的 OpenAI 兼容模型并导入经授权的闲鱼登录态；输入关键词、价格、地区、发布时间和 AI 判断要求，系统按计划抓取详情与图片、分析商品，输出 SQLite 结果、价格历史和通知。

## 实际例子
**官方部署与任务流程 → 场景：** 监控同城二手相机。**输入：** “相机、3000 元以内、同城、成色良好”的任务规则和账号登录态。**操作：** 启动容器，进入 Web UI 创建任务并绑定账号；调度器抓取新商品、调用多模态模型判断，再通过 Bark/企业微信/Webhook 推送。**输出：** 匹配商品通知、可搜索结果与价格历史。

```bash
git clone https://github.com/Usagi-org/ai-goofish-monitor
cd ai-goofish-monitor
cp .env.example .env
docker compose up -d
```

## 适合谁
需要按明确条件持续观察闲鱼商品、保存价格变化并把候选项推送到团队或个人通知渠道的二手采购者与研究人员。

## 局限 / 注意点
必须保护闲鱼登录态、模型 API Key 和 Web 管理口令（默认口令需修改）；抓取频率、账号风控、平台条款与 robots 规则仍由使用者负责，区域筛选也可能显著缩小结果集。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-04 | 9 | 228 | 16341 | 2841 | GitHub Today live snapshot |
| 2026-11-06 | 4 | 240 | 17511 | 2941 | GitHub Today live snapshot |

## 相关主题
- [[Topics/Monitoring]]
- [[Topics/Automation]]
- [[Topics/Multimodal-AI]]

## 相关日报
- [[Daily/2026/11/2026-11-04|2026-11-04]]
- [[Daily/2026/11/2026-11-06|2026-11-06]]

## GitHub 原始链接
https://github.com/Usagi-org/ai-goofish-monitor

## 官方资料复核（2026-11-04）
- README：https://github.com/Usagi-org/ai-goofish-monitor/blob/HEAD/README.md
- README blob SHA：`af6de028699cfc73afdc66a342a54353d8280eec`
- 榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

## 官方资料复核（2026-11-06）
- README：https://github.com/Usagi-org/ai-goofish-monitor/blob/HEAD/README.md
- README blob SHA：`af6de028699cfc73afdc66a342a54353d8280eec`
- 本次只合并当天榜单事实与资料复核记录，原有详细说明、案例、分类、标签、风险和历史均保留。
