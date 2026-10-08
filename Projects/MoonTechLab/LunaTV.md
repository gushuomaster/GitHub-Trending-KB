---
type: github-project
repo: "MoonTechLab/LunaTV"
url: "https://github.com/MoonTechLab/LunaTV"
first_seen: 2026-09-09
last_seen: 2026-09-09
trending_count: 1
language: "TypeScript"
category: ["Developer-Tools"]
tags: ["developer-tools"]
topics: ["Developer-Tools"]
---
# MoonTechLab/LunaTV

## 一句话说明
可自行部署的影视聚合播放器外壳，连接用户自备的数据源后提供多源搜索、在线播放、收藏和播放进度同步。

**当前官方描述：** 本项目采用 CC BY-NC-SA 协议，禁止任何商业化行为，任何衍生项目必须保留本项目地址并以相同协议开源

## 它能做什么
- 聚合多个自备资源接口进行搜索和剧集详情展示。
- 用 HLS.js 与 ArtPlayer 播放视频，并支持收藏和继续观看。
- 通过 Kvrocks、Redis 或 Upstash 同步数据，支持 PWA 与响应式界面。

## 怎么利用
用 Docker 部署应用与 Kvrocks，设置强管理员密码；在后台加入自己有权使用的资源站配置，随后通过网页或配套客户端搜索和播放。

## 实际例子
**官方 Docker 场景 →** 部署 `ghcr.io/moontechlab/lunatv:latest` 与 `apache/kvrocks`，配置 `KVROCKS_URL`；输出一个带登录、收藏和播放记录的个人实例。

## 关键命令
```text
docker compose up -d
```

## 适合谁
希望自建个人影视检索与播放界面，并能自行维护合法数据源和服务器的用户。

## 局限 / 注意点
部署后为空壳，不含播放源；必须确认内容来源与使用权。项目采用 CC BY-NC-SA，禁止商业化，并要求密码保护和避免公开注册。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-09 | 11 | 未保存 | 未保存 | 归档顺序；统计来自原有快照或未保存 |

## 相关主题
[[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-09|2026-09-09]]

## GitHub 原始链接
https://github.com/MoonTechLab/LunaTV

## 官方资料核对
- 核对日期：2026-10-08
- README：https://github.com/MoonTechLab/LunaTV/blob/main/README.md
- README blob SHA：01f877ac4324ff021361d981fee72290968afaf2
- 说明：项目卡反映核对日的当前官方资料；不声称这些能力与 2026-09-09 的历史版本完全相同。
