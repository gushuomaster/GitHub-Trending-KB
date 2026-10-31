---
type: github-project
repo: "Renhuai123/ziwei-doushu"
url: "https://github.com/Renhuai123/ziwei-doushu"
category: ["Traditional Calendar", "Chart Engine", "Dataset"]
topics: ["TypeScript", "Traditional Culture", "Dataset"]
first_seen: "2026-10-24"
last_seen: "2026-10-31"
trending_count: 3
github_rank: 5
stars_today: 1126
total_stars: 11193
forks: 2232
language: "TypeScript"
fetched_at: "2026-10-31T08:05:14+08:00"
documentation_checked_at: "2026-10-31"
stats_as_of: "2026-10-31"
snapshot_status: "live"
status: active
---
# Renhuai123/ziwei-doushu

## 一句话说明
一套可本地运行的紫微斗数排盘引擎与示例界面，用出生日期、时间和地点生成命盘，并公开排盘规则、古籍资料与配套数据集。

## 它能做什么
- 处理真太阳时、中国夏令时、闰月口径和晚子时换日等排盘边界。
- 生成本命、大限、流年、四化飞星、十二神煞与格局判定结果。
- 提供出生信息表单、命盘方格、宫位详情、古籍检索和移动端适配的 Demo。
- 提供 51.8 万条 v3.0 样本，以及覆盖 674,976 张命盘、8,774,688 段解读的 v4.0 十三维数据集，供研究或二次开发使用。

## 怎么利用
克隆仓库并启动 Next.js 开发服务器，在浏览器输入出生年月日、时辰、性别和出生地；前端排盘引擎完成历法换算、真太阳时校正和星曜安置，最终显示可切换本命、大限与流年的命盘。若要做自己的产品，可复用 `lib/ziwei/` 引擎和类型，而不是依赖未公开的线上后端。

## 实际例子
**官方 Demo 流程 → 场景：** 核对某个出生案例在真太阳时和晚子时口径下的排盘。**输入：** 出生日期、23 点附近的出生时间、性别与城市。**操作：** 启动本地站点，填写出生信息并切换口径，再运行官方回归测试。**输出：** 命盘方格、宫位详情及本命/大限/流年切换结果，同时得到测试是否通过的记录。

```bash
git clone https://github.com/Renhuai123/ziwei-doushu.git
cd ziwei-doushu && npm install
npm run dev
npm test
```

## 适合谁
需要开发传统历法排盘工具的 TypeScript 工程师、希望研究排盘口径的产品团队，以及需要结构化命盘样本的数据研究人员。

## 局限 / 注意点
- 开源版不含 AI 解读、合盘 AI 后端、完整断语库、用户系统和商业版界面；只配置 API Key 不会补出这些功能。
- v3.0 与 v4.0 数据集采用 CC BY 4.0、要求注明来源；`docs/tianji-ziwei/` 中倪师原话采用 CC BY-NC-SA 4.0，不可用于商业用途。v4.0 仍按 2026-10-15 的旧亮度默认生成，与 2026-10-20 后的新版默认可能出现亮度字和相关解读差异。
- 命理内容属于传统文化解释体系，不应作为医疗、法律、投资或其他高风险决策依据。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-24 | 5 | 546 | 6843 | 1405 | GitHub Today live snapshot |
| 2026-10-26 | 7 | 199 | 7530 | 1541 | GitHub Today live snapshot |
| 2026-10-31 | 5 | 1126 | 11193 | 2232 | GitHub Today live snapshot |

## 相关主题
[[Topics/TypeScript|TypeScript]] · [[Topics/Traditional-Culture|Traditional-Culture]] · [[Topics/Dataset|Dataset]]

## 相关日报
- [[Daily/2026/10/2026-10-24|2026-10-24]]
- [[Daily/2026/10/2026-10-26|2026-10-26]]

- [[Daily/2026/10/2026-10-31|2026-10-31]]
## GitHub 原始链接
https://github.com/Renhuai123/ziwei-doushu

## 官方资料复核（2026-10-31）
- README：https://github.com/Renhuai123/ziwei-doushu/blob/main/README.md
- README blob SHA：`f85adef1535e91db47a416b3da36c22e99720e3d`
- package.json blob SHA：`0a549e9fa495f43e80b8a298e1b9941e958e389e`
