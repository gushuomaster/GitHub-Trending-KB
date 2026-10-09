---
type: github-project
repo: "earthtojake/text-to-cad"
url: "https://github.com/earthtojake/text-to-cad"
first_seen: 2026-09-10
last_seen: 2026-10-07
trending_count: 4
category: ["CAD","AI","Manufacturing"]
topics: ["CAD","AI","Developer-Tools"]
---
# earthtojake/text-to-cad

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
**官方材料中的工作流：** 官方工作流：在 Codex 中安装插件后，输入零件尺寸和用途，让 CAD Skill 生成 STEP；随后调用 DfAM Check 检查壁厚与悬垂，输出模型、检查结果及可选 STL。

## 关键命令
```bash
codex plugin marketplace add earthtojake/text-to-cad --ref latest
codex plugin add text-to-cad@earthtojake
```


## 适合谁
需要快速制作原型零件、准备 3D 打印/CNC 文件或为 Agent 增加 CAD 能力的产品与机械工程人员。

## 局限 / 注意点
- 首次运行要联网下载 CAD runtime；插件和单独 Skills 不能重复安装，否则会出现重复技能；工程输出仍需人工核对公差与安全要求。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-10 | 5 | 未保存 | 未保存 | 语言不限归档；统计见说明 |
| 2026-10-05 | 5 | 未保存 | 未保存 | 历史归档 |
| 2026-10-06 | 3 | 未保存 | 未保存 | 历史归档 |
| 2026-10-07 | 3 | 未保存 | 未保存 | 历史归档 |

## 相关主题
[[Topics/CAD|CAD]] · [[Topics/AI|AI]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-10|2026-09-10]]
- [[Daily/2026/10/2026-10-05|2026-10-05]]
- [[Daily/2026/10/2026-10-06|2026-10-06]]
- [[Daily/2026/10/2026-10-07|2026-10-07]]

## GitHub 原始链接
https://github.com/earthtojake/text-to-cad

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/earthtojake/text-to-cad/blob/main/README.md
- 说明：项目卡反映核对日的当前官方资料，不声称这些能力与 2026-09-10 的历史版本完全相同。
