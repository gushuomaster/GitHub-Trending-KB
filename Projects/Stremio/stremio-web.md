---
type: github-project
repo: Stremio/stremio-web
first_seen: '2026-10-06'
last_seen: '2026-10-06'
url: https://github.com/Stremio/stremio-web
trending_count: 1
github_rank: 11
documentation_checked_at: '2026-10-13'
stats_as_of: null
stars_today: null
total_stars: null
forks: null
language: null
---

# Stremio/stremio-web

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
Stremio 的官方网页媒体中心，借助 addon 提供目录和播放入口，并在设备间同步媒体库与观看进度。

## 它能做什么
- 浏览 addon 提供的电影、剧集和频道目录。
- 同步 Library 和 Continue Watching，支持字幕、快捷键播放器、Chromecast 与 PWA。
- React 界面通过 Web Worker 使用 Rust/WASM 的 stremio-core，并由 stremio-video 选择播放器。

## 怎么利用
直接打开 `https://web.stremio.com`，按需要配置账户和 addon；开发者准备 Node.js 22+、pnpm 11+，运行 `pnpm install` 与 `pnpm start`，访问 `http://localhost:8080` 查看开发界面。

## 实际例子
**可推导用法 → 场景：** 在电脑和手机间继续观看已授权内容。**输入：** 同一 Stremio 账户及可用 addon 目录。**操作：** 将内容加入媒体库，在另一设备打开 Continue Watching。**输出：** 同步后的媒体条目和续播入口，具体可播放性由来源与浏览器能力决定。

## 适合谁
使用 Stremio 跨设备管理媒体的用户，以及研究 React/WASM 媒体应用的开发者。

## 局限 / 注意点
仓库提供客户端，不自带影视内容；内容、字幕和播放源依赖 addon，浏览器支持的协议/格式也会限制播放。许可证为 GPL-2.0。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-06 | 11 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fb3bb70ad58f298d2e18bd46d2c445de3b27cc42/archive/repository/2026/2026-10-06/(null).json) |

## 相关日报
- [[Daily/2026/10/2026-10-06|2026-10-06]]

## GitHub 原始链接
https://github.com/Stremio/stremio-web

## 官方资料复核（2026-10-13）
- README：https://github.com/Stremio/stremio-web/blob/development/README.md
- README blob SHA：`ce96ae53c12660cd33076805a9cb8265e879e82b`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。
