---
type: github-trending-dashboard
last_updated: 2026-10-09
latest_daily: "[[Daily/2026/10/2026-10-09|2026-10-09]]"
latest_scan_count: 9
---
# GitHub Trending 知识库 Dashboard

> 需要 Obsidian Dataview。收录以 GitHub Trending Today 原始页面为准，不做兴趣筛选或二次排序。

## 最新日报
[[Daily/2026/10/2026-10-09|打开 2026-10-09 日报]]

## 今日 Trending 全部项目
```dataview
TABLE repo, github_rank, stars_today, total_stars, language, trending_count
FROM "Projects"
WHERE last_seen = date(2026-10-09)
SORT github_rank ASC
```

## 按 Topic / Category 浏览
```dataview
TABLE repo, category, topics, first_seen, last_seen
FROM "Projects"
SORT category ASC, last_seen DESC
```

## 重复上榜
```dataview
TABLE repo, trending_count, first_seen, last_seen, stars_today
FROM "Projects"
WHERE trending_count > 1
SORT trending_count DESC, last_seen DESC
```

## 最近日报
```dataview
LIST
FROM "Daily"
WHERE type = "github-trending-daily"
SORT date DESC
LIMIT 30
```

