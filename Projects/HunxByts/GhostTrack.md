---
type: github-project
repo: "HunxByts/GhostTrack"
url: "https://github.com/HunxByts/GhostTrack"
first_seen: "2026-10-02"
last_seen: "2026-10-02"
trending_count: 1
github_rank: 13
language: null
total_stars: null
forks: null
stars_today: null
category: ["Security", "OSINT", "CLI"]
tags: ["osint", "ip", "phone", "username"]
topics: ["Security", "OSINT", "CLI"]
---
# HunxByts/GhostTrack

## 一句话说明
把 IP、电话号码和跨站用户名查询集中到一个命令行 OSINT 工具，辅助在合法授权范围内收集与核对公开线索。

## 它能做什么
- 查询 IP 地址的网络归属与粗略地理信息。
- 检查电话号码的国家、运营商等公开元数据。
- 在多个公开站点检索同名用户名，生成候选账号线索。
- 可与 Seeker 等独立工具组合，用于授权的安全演练或事件调查。

## 怎么利用
在隔离的 Python 环境安装依赖并启动交互菜单；选择查询类型，输入已获授权的 IP、号码或自有测试用户名。工具聚合公开结果，调查者再逐项访问来源、排除同名误报并形成证据记录，而不是把结果直接当作身份结论。

## 实际例子
**官方运行流程 →** 验证品牌自有账号是否被冒用。**输入 →** 品牌测试用户名。**操作 →** 启动 GhostTrack，选择 Username Tracker，在返回的站点列表中逐项核验页面。**输出 →** 可能使用该用户名的公开账号线索清单，供人工比对头像、简介与时间信息。

## 关键命令
```bash
git clone https://github.com/HunxByts/GhostTrack.git
pip3 install -r requirements.txt
python3 GhostTR.py
```

## 适合谁
在明确授权和合法目的下工作的安全分析师、反欺诈人员、品牌保护人员及 OSINT 学习者。

## 局限 / 注意点
公开源会过期、限流或产生同名误报，IP 和电话号码数据不能提供精确实时位置。目标信息属于敏感数据；禁止把本工具用于跟踪、骚扰、开盒、绕过访问控制或任何未经授权的调查。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-02 | 13 | 未保存 | 未保存 | 日期匹配语言不限归档 |

## 相关主题
[[Topics/Security|Security]] · [[Topics/OSINT|OSINT]] · [[Topics/CLI|CLI]]

## 相关日报
- [[Daily/2026/10/2026-10-02|2026-10-02]]

## GitHub 原始链接
https://github.com/HunxByts/GhostTrack

## 官方资料核对
- 核对日期：2026-10-13
- README：https://github.com/HunxByts/GhostTrack/blob/main/README.md
- README blob SHA：a5f4df0ff59621fbedce9ca2162058251643c6c2
- 说明：公开数据源及可用性会变化，卡片只陈述核对日可见能力。
