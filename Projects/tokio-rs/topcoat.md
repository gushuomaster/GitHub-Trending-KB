---
type: github-project
repo: "tokio-rs/topcoat"
url: "https://github.com/tokio-rs/topcoat"
first_seen: "2026-11-11"
last_seen: "2026-11-11"
trending_count: 1
language: "Rust"
total_stars: 6794
forks: 300
stars_today: 192
github_rank: 10
fetched_at: "2026-11-11T08:11:35+08:00"
documentation_checked_at: "2026-11-11"
stats_as_of: "2026-11-11"
snapshot_status: "live"
category: ["Web Framework","Rust","Full Stack"]
topics: ["Rust","Web-Framework","Server-Rendering"]
---
# tokio-rs/topcoat

## 一句话说明
Topcoat 是模块化、开箱即用的 Rust 全栈 Web 框架，让页面、路由、服务端组件、客户端交互和静态资源尽量留在一套 Rust 工程中。

## 它能做什么
- 在服务端用异步 Rust 组件和 `view!` 模板渲染 HTML，组件可直接查询数据库。
- 把类型检查的表达式映射为浏览器交互，并用 shard 在需要时从服务端局部重渲染 HTML。
- 从 Rust 模块结构推导页面、布局和 API 路由，不要求额外构建步骤。
- 内置可复制修改的 UI 组件、资源打包、Tailwind、会话、邮件、OpenAPI 与本地化等模块。

## 怎么利用
安装 CLI 后用推荐预设创建工程，生成并应用 Toasty/SQLite 迁移，再启动开发服务器；输入 Rust 页面组件、模型和路由，框架输出可在浏览器交互的服务端渲染应用。

## 实际例子
**官方 Getting Started →** 运行 `topcoat new hello-world --recommended` 会生成带模块路由、浏览器 runtime、Tailwind、Topcoat UI、图标、字体和 SQLite Todo 示例的工程；执行迁移后用 `topcoat dev` 在本地热重载运行。

## 关键命令
```bash
cargo install topcoat-cli
topcoat new hello-world --recommended
topcoat dev
```

## 适合谁
希望用 Rust 构建服务端渲染全栈应用，并减少独立前端 API/构建层样板代码的 Web 开发者。

## 局限 / 注意点
README 明确标为早期实验项目并预期破坏性变更；认证、后台任务、静态导出、部署文档、验证和图片优化仍在 Roadmap，现阶段不宜在未评估升级与运维成本时直接承载关键生产系统。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-11 | 10 | 192 | 6794 | 300 | GitHub Today live snapshot |

## 相关主题
[[Topics/Rust|Rust]] · [[Topics/Web-Framework|Web-Framework]] · [[Topics/Server-Rendering|Server-Rendering]]

## 相关日报
- [[Daily/2026/11/2026-11-11|2026-11-11]]

## GitHub 原始链接
https://github.com/tokio-rs/topcoat

## 官方资料复核（2026-11-11）
- README：https://github.com/tokio-rs/topcoat/blob/HEAD/README.md
- README blob SHA：`2799dc5b44ce9bb9bf53d16a92af2ff4fc4810f3`
- Getting Started：https://github.com/tokio-rs/topcoat/blob/HEAD/docs/getting_started.md
- 榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

