---
type: github-project
repo: morluto/rea
first_seen: '2026-10-07'
last_seen: '2026-10-16'
language: TypeScript
total_stars: 269556
forks: 67576
stars_today: 32314
github_rank: 1
trending_count: 10
fetched_at: '2026-10-16T08:10:32+08:00'
url: https://github.com/morluto/rea
documentation_checked_at: '2026-10-16'
stats_as_of: '2026-10-16'
---

# morluto/rea

> 功能和用法按 2026-10-16 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
让 Coding Agent 调查无源码应用、Electron 程序和原生二进制，给出功能实现机制、证据与分析边界。

## 它能做什么
- 静态分析 JavaScript/Electron 目录或 ASAR，返回调用图、证据和未知项。
- 通过 Hopper、Ghidra 等已配置引擎检查原生函数、内存和反编译结果。
- 通过 MCP 或 CLI 将应用行为调查接入 Coding Agent。

## 怎么利用
在兼容性研究中输入已取得授权的应用目录，先做静态分析，再按需要选择原生分析引擎；Agent 根据证据解释目标功能，输出调查结果和未覆盖部分。

## 实际例子
**官方终端入门 → 场景：** 检查提取后的 Electron 应用。**输入：** 应用目录或 ASAR。**操作：** 运行下面的静态分析命令。**输出：** JSON 中的 Evidence、恢复图、limitations 和 unknowns；无需执行目标应用。

```sh
npx -y rea-agents@latest analyze-javascript-application /absolute/path/to/app --json
```

## 适合谁
研究桌面应用兼容性、排查无源码行为或分析二进制的逆向工程师。

## 局限 / 注意点
需要合法获得分析目标；原生分析可能依赖 Hopper/Ghidra，结论仍需结合证据验证。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-07 | 8 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/7a58ec2d6aa31e161897e8b78805a6c3df276209/archive/repository/2026/2026-10-07/(null).json) |
| 2026-10-08 | 1 | 4655 | 15841 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |
| 2026-10-09 | 3 | 7738 | 25948 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |
| 2026-10-10 | 1 | 14927 | 45391 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |
| 2026-10-11 | 1 | 25793 | 71944 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |
| 2026-10-12 | 1 | 25599 | 103465 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |
| 2026-10-13 | 1 | 45327 | 155789 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |

| 2026-10-14 | 1 | 54679 | 206380 | GitHub Today live snapshot |
| 2026-10-15 | 1 | 41034 | 241130 | GitHub Today live snapshot |
| 2026-10-16 | 1 | 32314 | 269556 | GitHub Today live snapshot |

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/10/2026-10-07|2026-10-07]]
- [[Daily/2026/10/2026-10-08|2026-10-08]]
- [[Daily/2026/10/2026-10-09|2026-10-09]]
- [[Daily/2026/10/2026-10-10|2026-10-10]]
- [[Daily/2026/10/2026-10-11|2026-10-11]]
- [[Daily/2026/10/2026-10-12|2026-10-12]]
- [[Daily/2026/10/2026-10-13|2026-10-13]]

- [[Daily/2026/10/2026-10-14|2026-10-14]]
- [[Daily/2026/10/2026-10-15|2026-10-15]]
- [[Daily/2026/10/2026-10-16|2026-10-16]]

## GitHub 原始链接
https://github.com/morluto/rea

## 官方资料复核（2026-10-16）
- README：https://github.com/morluto/rea/blob/main/README.md
- README blob SHA：`c4a89bceee4b0f0bde03bc7719088f4a7fc6b632`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。


