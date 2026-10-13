---
type: github-project
repo: earthtojake/text-to-cad
url: https://github.com/earthtojake/text-to-cad
first_seen: '2026-09-10'
last_seen: '2026-10-07'
trending_count: 4
category:
- CAD
- AI
- Manufacturing
topics:
- CAD
- AI
- Developer-Tools
github_rank: 3
documentation_checked_at: '2026-10-13'
stats_as_of: null
stars_today: null
total_stars: null
forks: null
language: null
---

# earthtojake/text-to-cad

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
为 Agent 提供从自然语言或图片生成可制造 CAD 模型的本地工作流，并导出常见工程文件。

## 它能做什么
- 创建和编辑 STEP 模型，并可导出 STL、3MF、GLB
- 查找标准 STEP 零件并生成带尺寸的 PDF 工程图
- 检查壁厚、悬垂、支撑体积和加工方向等可制造性指标
- 连接 3D 打印、钣金和 CNC 制造服务

## 怎么利用
官方工作流：在 Codex 中安装插件后，输入零件尺寸和用途，让 CAD Skill 生成 STEP；随后调用 DfAM Check 检查壁厚与悬垂，输出模型、检查结果及可选 STL。

## 实际例子
**可推导用法 → 场景：** 为桌面设备制作固定支架。**输入：** 设备尺寸、孔距、材料和壁厚要求。**操作：** 让 Agent 生成 STEP，在本地 viewer 核对尺寸，再做可制造性检查并导出 STL。**输出：** 可修改的 CAD、打印文件与检查结果，交给切片软件复核。

## 适合谁
需要快速制作原型零件、准备 3D 打印/CNC 文件或为 Agent 增加 CAD 能力的产品与机械工程人员。

## 局限 / 注意点
首次运行要联网下载 CAD runtime；插件和单独 Skills 不能重复安装，否则会出现重复技能；工程输出仍需人工核对公差与安全要求。

## 关键命令
```bash
codex plugin marketplace add earthtojake/text-to-cad --ref latest
codex plugin add text-to-cad@earthtojake
```

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-10 | 5 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/186fd83e5bf5c5918ad47061fb0276a99cf23ab6/archive/repository/2026/2026-09-10/(null).json) |
| 2026-10-05 | 5 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/25d857f152fee80260225fdeb6dc0460fb61c5b8/archive/repository/2026/2026-10-05/(null).json) |
| 2026-10-06 | 3 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fb3bb70ad58f298d2e18bd46d2c445de3b27cc42/archive/repository/2026/2026-10-06/(null).json) |
| 2026-10-07 | 3 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/7a58ec2d6aa31e161897e8b78805a6c3df276209/archive/repository/2026/2026-10-07/(null).json) |

## 相关主题
[[Topics/CAD|CAD]] · [[Topics/AI|AI]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-10|2026-09-10]]
- [[Daily/2026/10/2026-10-05|2026-10-05]]
- [[Daily/2026/10/2026-10-06|2026-10-06]]
- [[Daily/2026/10/2026-10-07|2026-10-07]]

## GitHub 原始链接
https://github.com/earthtojake/text-to-cad

## 官方资料复核（2026-10-13）
- README：https://github.com/earthtojake/text-to-cad/blob/main/README.md
- README blob SHA：`2cd09ec3c928459c1072a001bd3d62cfec25b27c`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。
