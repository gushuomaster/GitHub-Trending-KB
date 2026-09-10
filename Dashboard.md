---
type: github-trending-dashboard
last_updated: 2026-09-10
latest_daily: "[[2026-09-10]]"
top_score: 9.5
---

# GitHub Trending Dashboard

> 下面查询需要安装 Obsidian 社区插件 **Dataview**。

## 高评分项目

```dataview
TABLE recommend_score AS "评分", first_seen AS "首次发现", last_seen AS "最近发现", trending_count AS "上榜次数", stars_today AS "今日新增"
FROM "Projects"
WHERE recommend_score >= 9
SORT recommend_score DESC
```

## Agent 项目

```dataview
TABLE recommend_score AS "评分", last_seen AS "最近发现", stars_today AS "今日新增"
FROM "Projects"
WHERE contains(category, "Agent")
SORT last_seen DESC, recommend_score DESC
```

## 最近日报

```dataview
LIST
FROM "Daily"
SORT file.name DESC
LIMIT 30
```
