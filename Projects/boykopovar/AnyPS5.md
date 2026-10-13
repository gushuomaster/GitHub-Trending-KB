---
type: github-project
repo: boykopovar/AnyPS5
first_seen: '2026-10-06'
last_seen: '2026-10-12'
language: C++
total_stars: 30057
forks: 2581
stars_today: 3952
github_rank: 2
trending_count: 7
fetched_at: '2026-10-12T08:12:00+08:00'
url: https://github.com/boykopovar/AnyPS5
documentation_checked_at: '2026-10-13'
stats_as_of: '2026-10-12'
---

# boykopovar/AnyPS5

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
将合法取得的 PS5 可执行文件重链接成 Linux 或 Windows 原生格式，并提供兼容系统库供其运行。

## 它能做什么
- 将输入 ELF 转换为 Linux ELF 或 Windows PE，并转换配套模块。
- 提供可动态链接的系统 PRX 库实现。
- 将支持的着色器重编译为 SPIR-V，并支持手柄与可配置键鼠输入。

## 怎么利用
输入干净的 ELF 及其随附模块，按 Usage 放置 sce_module 等目录；用 relinker 选择目标系统，把对应系统库放入 libs、资源放入 app0，输出目标可执行文件并检验兼容性。

## 实际例子
**官方 Usage → 场景：** 将干净 ELF 转换为 Windows 目标。**输入：** source/input.elf 和同目录约定布局的配套 ELF 模块。**操作：** 执行 `relinker --windows source/input.elf app.exe`，再按运行布局准备兼容库及资源。**输出：** Windows PE 文件；可运行性取决于系统库和 GPU 兼容覆盖，扩展名本身不决定输出格式。

## 适合谁
研究游戏保存、平台互操作和可执行程序兼容性的开发者。

## 局限 / 注意点
项目仍在兼容性建设中，并非所有游戏/系统调用都支持；不提供固件、密钥或版权软件。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-06 | 5 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fb3bb70ad58f298d2e18bd46d2c445de3b27cc42/archive/repository/2026/2026-10-06/(null).json) |
| 2026-10-07 | 4 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/7a58ec2d6aa31e161897e8b78805a6c3df276209/archive/repository/2026/2026-10-07/(null).json) |
| 2026-10-08 | 3 | 2716 | 10857 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |
| 2026-10-09 | 1 | 4669 | 15634 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |
| 2026-10-10 | 2 | 5868 | 22226 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |
| 2026-10-11 | 2 | 5805 | 26766 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |
| 2026-10-12 | 2 | 3952 | 30057 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/10/2026-10-06|2026-10-06]]
- [[Daily/2026/10/2026-10-07|2026-10-07]]
- [[Daily/2026/10/2026-10-08|2026-10-08]]
- [[Daily/2026/10/2026-10-09|2026-10-09]]
- [[Daily/2026/10/2026-10-10|2026-10-10]]
- [[Daily/2026/10/2026-10-11|2026-10-11]]
- [[Daily/2026/10/2026-10-12|2026-10-12]]

## GitHub 原始链接
https://github.com/boykopovar/AnyPS5

## 官方资料复核（2026-10-13）
- README：https://github.com/boykopovar/AnyPS5/blob/main/README.md
- README blob SHA：`76dd74c31b65360b243e5be1147d3a11cfbe28fd`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。
