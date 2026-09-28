---
repo: "vercel-labs/scriptc"
url: "https://github.com/vercel-labs/scriptc"
first_seen: 2026-09-28
last_seen: 2026-09-28
trending_count: 1
github_rank: 6
stars_today: 102
total_stars: 5515
forks: 143
language: TypeScript
fetched_at: "2026-09-28T15:37:13+08:00"
category: ["Compiler", "Developer Tools", "TypeScript"]
tags: ["typescript", "compiler", "native", "wasm", "llvm"]
topics: ["Developer-Tools"]
status: active
---
# vercel-labs/scriptc

## 一句话说明
把 TypeScript/JavaScript 编译成类型化 IR、C、LLVM IR、汇编、目标文件、原生可执行文件或 WASM，而成品不依赖 Node。

## 它能做什么
- 使用 TypeScript 编译器解析与类型检查。
- 输出原生可执行文件、对象文件或 WASI Preview 1 模块。
- 用 coverage 命令定位不能静态编译的代码。
- 通过 `--dynamic` 嵌入 quickjs-ng 兼容 npm 包和动态代码。

## 怎么利用
先用 `scriptc coverage` 检查静态覆盖率，再把 CLI、后台服务或计算脚本编译成单文件原生程序；需要跨平台时输出 WASM。

## 实际例子
**场景 →** 分发一个无需安装 Node 的 TypeScript CLI。 **输入 →** 读取 `process.argv` 并打印问候语的 `hello.ts`。 **操作 →** `scriptc build hello.ts -o hello`。 **输出 →** 可直接运行的 `hello` 原生可执行文件。

```bash
npm install -g scriptc
scriptc build hello.ts -o hello
./hello Codex
```

## 适合谁
希望把 TypeScript 工具部署成原生二进制或 WASM 的 CLI/平台开发者。

## 局限 / 注意点
项目仍属实验性，静态支持范围不等同完整 Node；编译器要求 Node.js 24+，链接或 WASM 构建还可能需要平台 SDK、linker 或 Zig。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-28 | 6 | +102 | 5515 |

## 相关主题
[[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-28|2026-09-28]]
