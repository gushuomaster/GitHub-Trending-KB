---
repo: "willfaust/Madeira"
url: "https://github.com/willfaust/Madeira"
first_seen: 2026-09-28
last_seen: 2026-09-28
trending_count: 1
github_rank: 9
stars_today: 83
total_stars: 889
forks: 155
language: C
fetched_at: "2026-09-28T15:37:13+08:00"
category: ["Emulation", "iOS", "Gaming"]
tags: ["ios", "wine", "fex", "dxmt", "emulation"]
topics: ["Developer-Tools"]
status: active
---
# willfaust/Madeira

## 一句话说明
在未越狱 iPhone 上把 x86-64 Windows 游戏通过 FEX-Emu、Wine ARM64EC 与 DXMT 转译到 iOS/Metal 运行。

## 它能做什么
- 用 FEX-Emu 把 x86-64 指令翻译为 ARM64。
- 用 Wine 运行 Windows 用户态环境，并把 wineserver 放入同一进程线程。
- 用 DXMT 把 D3D11 图形调用转换为 Metal。
- 目前已让 Thumper、ULTRAKILL 等游戏达到可玩或进入 gameplay。

## 怎么利用
克隆带子模块的仓库，分别构建 Wine、ARM64EC PE 模块、FEX、DXMT 和 iOS App，再用 Apple ID 签名并侧载；运行时通过 StikDebug 附加调试器启用 JIT。

## 实际例子
**场景 →** 在 iPhone 13 Pro 上测试 ULTRAKILL。 **输入 →** Madeira 构建、合法游戏文件和 Microsoft VC runtime。 **操作 →** 编译并侧载 App，启用 JIT，建立 Wine prefix 后启动游戏。 **输出 →** 游戏在非越狱 iPhone 上进入可玩状态。

```bash
git clone --recurse-submodules https://github.com/willfaust/Madeira.git
```

## 适合谁
研究 iOS JIT、x86 转译、Wine 或图形 API 转换的底层开发者。

## 局限 / 注意点
官方明确它是研究项目而非产品；存在单游戏兼容、低帧率、崩溃和破坏性变更。无法通过 App Store 分发；免费 Apple ID 签名每 7 天需重装，且分发衍生作品受 GPL-3.0-or-later 约束。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-28 | 9 | +83 | 889 |

## 相关主题
[[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-28|2026-09-28]]
