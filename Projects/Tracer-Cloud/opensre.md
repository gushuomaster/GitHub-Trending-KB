---
type: github-project
repo: "Tracer-Cloud/opensre"
url: "https://github.com/Tracer-Cloud/opensre"
first_seen: "2026-11-20"
last_seen: "2026-11-21"
trending_count: 2
language: "Python"
total_stars: 13598
forks: 1926
stars_today: 466
github_rank: 13
fetched_at: "2026-11-21T08:10:09+08:00"
documentation_checked_at: "2026-11-21"
stats_as_of: "2026-11-21"
snapshot_status: "live"
category: ["DevOps", "CI-CD"]
topics: ["DevOps", "CI-CD", "AI-Agent"]
---
# Tracer-Cloud/opensre

## 一句话说明
OpenSRE 是面向 CI/CD 可靠性的 CLI Agent，读取失败流水线和日志、追查根因、测试假设，并推送修复供工程师审查。

## 它能做什么
- 区分代码失败与 CI 基础设施噪声并生成根因解释。
- 支持交互式 REPL、Headless CLI、会话恢复与成本查看。
- 可接 GitHub 等集成，并部署托管网关、AMI 或自托管容器。

## 怎么利用
场景：流水线 checkout-api 失败。安装并运行 `opensre ask "why is checkout-api slow?"`，Agent 读取授权范围内的代码和运行信息，验证假设并输出根因、建议或待审查修复。

## 实际例子
**场景 → 输入 → 操作 → 输出：** 场景：流水线 checkout-api 失败。安装并运行 `opensre ask "why is checkout-api slow?"`，Agent 读取授权范围内的代码和运行信息，验证假设并输出根因、建议或待审查修复。

## 关键命令
```bash
curl -fsSL https://install.opensre.com | bash -s -- -gh
opensre ask "why is checkout-api slow?"
```

## 适合谁
需要缩短 CI 故障定位和修复时间的开发、SRE 与平台团队。

## 局限 / 注意点
当前为 Public Alpha，API 与集成可能变化；交互 Shell 需要活跃账号，安装器抓取 main 最新构建。代码、日志与模型提供方权限必须审查，产品分析和 Sentry 默认 opt-out。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 证据说明 |
| --- | ---: | ---: | ---: | ---: | --- |
| 2026-11-20 | 13 | 38 | 13113 | 1903 | GitHub Today live snapshot |
| 2026-11-21 | 13 | 466 | 13598 | 1926 | GitHub Today live snapshot |

## 相关主题
[[Topics/DevOps|DevOps]] · [[Topics/CI-CD|CI-CD]] · [[Topics/AI-Agent|AI-Agent]]

## 相关日报
- [[Daily/2026/11/2026-11-20|2026-11-20]]
- [[Daily/2026/11/2026-11-21|2026-11-21]]

## GitHub 原始链接
https://github.com/Tracer-Cloud/opensre

## 官方资料复核（2026-11-20）
- README：https://github.com/Tracer-Cloud/opensre/blob/HEAD/README.md
- README blob SHA：`111b126f0bfcc3df0d9ed20e4561c70d7eca695b`
- 说明：项目卡反映核对日的当前官方资料与当天实时榜单事实。
