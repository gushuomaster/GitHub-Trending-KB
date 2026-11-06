---
type: github-project
repo: "lz4/lz4"
url: "https://github.com/lz4/lz4"
first_seen: "2026-11-06"
last_seen: "2026-11-06"
trending_count: 1
language: "C"
total_stars: 12370
forks: 1633
stars_today: 23
github_rank: 8
fetched_at: "2026-11-06T08:10:55+08:00"
documentation_checked_at: "2026-11-06"
stats_as_of: "2026-11-06"
snapshot_status: "live"
category: ["Compression", "Systems"]
tags: ["lossless-compression", "streaming", "c-library", "cli"]
topics: ["Compression", "Lossless-Compression", "Systems-Programming"]
---
# lz4/lz4

## 一句话说明
提供面向实时系统的高速无损压缩库和命令行工具，以较低压缩比换取每核数百 MB/s 的压缩与多 GB/s 解压。

## 它能做什么
- 提供 block、frame、streaming C API 与 `lz4` CLI。
- 可用 acceleration 动态交换压缩速度和压缩比。
- 提供 LZ4_HC 高压缩模式和最多使用末尾 64 KB 的字典压缩。

## 怎么利用
**官方命令对应场景 →** 对持续产生的大型日志或构建产物执行 `lz4 input.log input.log.lz4`，传输后用 `lz4 -d input.log.lz4 output.log` 快速还原；应用也可链接 `liblz4` 处理内存块或流。

## 实际例子
**官方命令对应场景 →** 对持续产生的大型日志或构建产物执行 `lz4 input.log input.log.lz4`，传输后用 `lz4 -d input.log.lz4 output.log` 快速还原；应用也可链接 `liblz4` 处理内存块或流。

## 关键命令
```bash
lz4 input.log input.log.lz4
lz4 -d input.log.lz4 output.log
```

## 适合谁
需要低延迟压缩的系统、存储、游戏与数据工程团队。

## 局限 / 注意点
它优先速度而非最高压缩比，带宽或存储极敏感时需与 zstd 等算法实测比较；库与 CLI 的许可证不同，集成时应分别核对 BSD-2-Clause 与 GPL-2.0-or-later。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-06 | 8 | 23 | 12370 | 1633 | GitHub Today live snapshot |

## 相关主题
- [[Topics/Compression|Compression]]
- [[Topics/Lossless-Compression|Lossless Compression]]
- [[Topics/Systems-Programming|Systems Programming]]

## 相关日报
- [[Daily/2026/11/2026-11-06|2026-11-06]]

## GitHub 原始链接
https://github.com/lz4/lz4

## 官方资料复核（2026-11-06）
- README：https://github.com/lz4/lz4/blob/HEAD/README.md
- README blob SHA：`25b4c8f07e53b125e836f7b515ec88f4706c559e`
- 榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
