---
date:
type: github-trending-daily
tags:
  - github/trending
---

# GitHub Trending — {{date}}

> GitHub Today 页面显示什么就记录什么；严格保留原始顺序，不做兴趣筛选、评分或二次排序。日报重点回答：**它是什么、能拿来做什么、具体怎么用。**

## 1. [[项目文件名|owner/repo]]

**简介：** 用 1~2 句话说明这个项目到底解决什么问题。

**主要功能 / 特点：**
- 核心能力 1
- 核心能力 2
- 主要语言：{{language}}
- 总 Stars：{{total_stars}} · Forks：{{forks}} · 今日新增：{{stars_today}}

**怎么利用 / 实例：**
写一个具体场景，优先使用 README、docs、examples、demo 中真实存在的用法。尽量描述为：如果你要做 X，可以用这个项目完成 A → B → C，最终得到 Y。
如有真实命令或最小示例，可附简短命令。若不是官方实例而是基于功能推导，必须标记为“可推导用法”。

**GitHub：** {{github_url}}

---

## 采集说明
- 当天 GitHub Trending 页面显示多少个仓库就完整收录多少个。
- Repo 名称统一使用标准 owner/repo。
- 日报文件固定存放在 Daily/YYYY/MM/YYYY-MM-DD.md。
- “怎么利用 / 实例”必须具体，避免只重复技术栈、架构名词或抽象能力。
- 项目节点按 owner/repo 唯一键去重；重复上榜只更新同一项目卡和 Trending 历史。
