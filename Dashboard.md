---
type: github-trending-dashboard
last_updated: 2026-09-22
latest_daily: "[[2026-09-22]]"
latest_scan_count: 12
latest_new_count: 9
latest_changed_count: 2
latest_repeat_count: 1
---
# GitHub 项目发现知识图谱 Dashboard
> 需要 Obsidian Dataview。
## 今日新发现
```dataview
TABLE repo, github_rank, stars_today, total_stars, category, topics
FROM "Projects"
WHERE first_seen = date(2026-09-22)
SORT github_rank ASC
```
## 最近发生变化
```dataview
TABLE repo, last_seen, github_rank, stars_today, trending_count, status
FROM "Projects"
WHERE last_seen >= date(today) - dur(7 days)
SORT last_seen DESC, github_rank ASC
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
SORT file.name DESC
LIMIT 30
```