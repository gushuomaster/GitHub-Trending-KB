---
type: github-project
repo: antirez/ds4
first_seen: '2026-10-05'
last_seen: '2026-10-05'
url: https://github.com/antirez/ds4
trending_count: 1
github_rank: 16
documentation_checked_at: '2026-10-13'
stats_as_of: null
stars_today: null
total_stars: null
forks: null
language: null
---

# antirez/ds4

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
DwarfStar：针对少数大模型优化的本地推理引擎，结合量化、SSD 流式读取和多设备并行利用个人工作站资源。

## 它能做什么
- 提供 Metal、CUDA 和面向 Strix Halo 的 ROCm 路径，支持项目列出的 DeepSeek、GLM 等模型。
- 包含交互 CLI、原生 coding agent 和多会话 HTTP 服务。
- 在匹配硬件上使用 SSD streaming、张量并行或流水线并行扩大可运行模型规模。

## 怎么利用
按硬件文档构建后下载项目专用 GGUF；可运行 `./ds4 -p "Explain Redis streams in one paragraph."` 做单次推理，或 `./ds4-server --ctx 32768` 启动服务。用 `-m FILE` 明确选择已支持权重。

## 实际例子
**官方 Everyday Use → 场景：** 本机运行模型并提供 HTTP 接口。**输入：** 官方支持的 GGUF 权重及匹配硬件。**操作：** 启动 ds4-server，默认监听 `http://127.0.0.1:8000`，按 serving 文档发送请求。**输出：** 本地模型回答与多会话服务。

## 适合谁
拥有较大内存 Mac 或受支持 GPU 工作站，研究量化与本地推理的工程师。

## 局限 / 注意点
不是通用 GGUF runner，必须使用项目生成/支持的模型格式；模型支持列表可变化，README 标为 beta。SSD streaming 不能消除硬件、磁盘吞吐与上下文的瓶颈。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-05 | 16 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/25d857f152fee80260225fdeb6dc0460fb61c5b8/archive/repository/2026/2026-10-05/(null).json) |

## 相关日报
- [[Daily/2026/10/2026-10-05|2026-10-05]]

## GitHub 原始链接
https://github.com/antirez/ds4

## 官方资料复核（2026-10-13）
- README：https://github.com/antirez/ds4/blob/main/README.md
- README blob SHA：`5c3dbf923ec9ebc444f53b3b95fc18a409a8cf5a`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。
