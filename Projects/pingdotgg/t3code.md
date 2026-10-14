---
type: github-project
repo: pingdotgg/t3code
first_seen: '2026-10-04'
last_seen: '2026-10-06'
url: https://github.com/pingdotgg/t3code
trending_count: 3
github_rank: 4
documentation_checked_at: '2026-10-13'
stats_as_of: null
stars_today: null
total_stars: null
forks: null
language: null
---

# pingdotgg/t3code

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
为本机 Coding Agent 提供桌面、网页和手机控制界面，可继续使用已登录的 Claude Code、Codex 等工具。

## 它能做什么
- 统一操作 Claude Code、Codex、Cursor、Grok Build、OpenCode 和 Antigravity。
- 提供 Electron 桌面端、本地 Web 服务和 iOS/Android 远程入口。
- 支持后台服务、多个账户与项目设置，具体权限由所接入工具及 T3 配置共同决定。

## 怎么利用
先安装并登录至少一个支持的 Agent，再运行 `npx t3@latest` 打开本地 Web 界面；选择项目和 Provider 后提交任务。需要手机使用时，按官方 remote-access 文档配置连接，而非直接暴露本机端口。

## 实际例子
**可推导用法 → 场景：** 外出时继续家中电脑的代码修复。**输入：** 已登录 Codex 的电脑、目标仓库和一个失败测试。**操作：** 在 T3 界面选择项目，提交修复目标，通过官方远程连接查看 Agent 的执行状态。**输出：** 由电脑上的 Agent 生成的文件改动和测试结果，可在回来后审阅。

## 适合谁
想跨桌面、网页和手机管理本机 Coding Agent 的开发者。

## 局限 / 注意点
项目仍处于早期，README 明确提示存在 bug；它不附送模型订阅，也不能替代底层 Agent 的安装和认证。远程连接与工具执行权限需要单独配置。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-04 | 7 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fe5095909e994262e6bf167a48b8035f8d07bb3b/archive/repository/2026/2026-10-04/(null).json) |
| 2026-10-05 | 9 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/25d857f152fee80260225fdeb6dc0460fb61c5b8/archive/repository/2026/2026-10-05/(null).json) |
| 2026-10-06 | 4 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fb3bb70ad58f298d2e18bd46d2c445de3b27cc42/archive/repository/2026/2026-10-06/(null).json) |

## 相关日报
- [[Daily/2026/10/2026-10-04|2026-10-04]]
- [[Daily/2026/10/2026-10-05|2026-10-05]]
- [[Daily/2026/10/2026-10-06|2026-10-06]]

## GitHub 原始链接
https://github.com/pingdotgg/t3code

## 官方资料复核（2026-10-13）
- README：https://github.com/pingdotgg/t3code/blob/main/README.md
- README blob SHA：`8aa78f81b9ad72753cde7a8d3106ef8c7a8f0697`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。

## 相关主题
[[Topics/AI|AI]] · [[Topics/Agent|Agent]] · [[Topics/Developer-Tools|Developer Tools]]
