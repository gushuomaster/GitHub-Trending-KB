---
type: github-project
repo: "Tracer-Cloud/opensre"
url: "https://github.com/Tracer-Cloud/opensre"
first_seen: "2026-11-20"
last_seen: "2026-11-28"
trending_count: 9
language: "Python"
total_stars: 16122
forks: 2159
stars_today: 328
github_rank: 13
fetched_at: "2026-11-28T08:07:15+08:00"
documentation_checked_at: "2026-11-28"
stats_as_of: "2026-11-28"
snapshot_status: "live"
category: ["DevOps", "CI-CD"]
topics: ["DevOps", "CI-CD", "AI-Agent"]
---
# Tracer-Cloud/opensre

## 一句话说明

OpenSRE 是可自托管、可使用自有模型的可靠性 Agent：既能调查失败的 CI/CD 流水线并提交待审修复，也能关联日志、指标、追踪、部署记录和基础设施状态处理生产事故。

## 它能做什么

- 读取失败检查、CI 日志、近期提交与部署，区分代码缺陷和流水线基础设施噪声，并把修复推到 PR 分支供人审查。
- 连接 60+ 类观测、云、Kubernetes、数据库、事件管理和代码托管工具，把日志、指标、Trace、Pod 状态与部署历史放进同一调查。
- 提供交互式 Shell、Headless CLI 与 Python API，可恢复会话、查看成本，并将结果发送到 Slack、PagerDuty 或 Telegram。
- 支持 OpenSRE Cloud 网关、AWS AMI/systemd 和自托管容器，并可选择 OpenAI、Anthropic、Ollama、Gemini、Bedrock 等模型提供方。

## 怎么利用

**官方 Headless CLI 场景 →** 先在仓库目录安装并登录 OpenSRE，再运行 `opensre ask "why is checkout-api slow?"`。输入是问题以及已授权的代码、CI 和观测集成；Agent 抓取相关检查、日志、指标与部署，测试假设并输出带证据的根因、建议，必要时生成待审查修复。

## 实际例子

**官方 CI/CD 工作流 → 场景：** 某个 PR 检查失败且重跑仍不稳定。**输入：** 失败运行、代码差异和已授权 GitHub 集成。**操作：** OpenSRE 读取失败检查与日志，判断是代码错误还是 CI 噪声，复现实验并把修复推到 PR 分支。**输出：** 带证据的调查结论以及由工程师最终审查的修复提交。

## 关键命令
```bash
curl -fsSL https://install.opensre.com | bash -s -- -gh
opensre ask "why is checkout-api slow?"
```

## 适合谁
需要缩短 CI 故障定位和修复时间的开发、SRE 与平台团队。

## 局限 / 注意点

当前仍是 Public Alpha，API 与集成会变化；交互 Shell 需要活跃账号，安装脚本默认拉取 `main` 的最新构建。调查生产事故或自动推送修复会接触代码、日志、云资源和消息渠道，必须按连接器配置最小权限、审批与脱敏；自托管并不自动保证模型调用留在内网，仍要核对所选 Provider、遥测与数据保留设置。

## Trending 历史


| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 证据说明 |
| --- | ---: | ---: | ---: | ---: | --- |
| 2026-11-20 | 13 | 38 | 13113 | 1903 | GitHub Today live snapshot |
| 2026-11-21 | 13 | 466 | 13598 | 1926 | GitHub Today live snapshot |
| 2026-11-22 | 13 | 450 | 13982 | 1943 | GitHub Today live snapshot |
| 2026-11-23 | 13 | 399 | 14403 | 1965 | GitHub Today live snapshot |
| 2026-11-24 | 13 | 436 | 14825 | 1988 | GitHub Today live snapshot |
| 2026-11-25 | 13 | 398 | 15178 | 2010 | GitHub Today live snapshot |
| 2026-11-26 | 13 | 348 | 15,508 | 2,028 | GitHub Today live snapshot |
| 2026-11-27 | 13 | 327 | 15,814 | 2,064 | GitHub Today live snapshot |

| 2026-11-28 | 13 | 328 | 16122 | 2159 | 仓库实时快照（GitHub Trending Any / Any / Today；采集时间 2026-11-28T08:07:15+08:00） |

## 相关主题
[[Topics/DevOps|DevOps]] · [[Topics/CI-CD|CI-CD]] · [[Topics/AI-Agent|AI-Agent]]

## 相关日报


- [[Daily/2026/11/2026-11-20|2026-11-20]]
- [[Daily/2026/11/2026-11-21|2026-11-21]]
- [[Daily/2026/11/2026-11-22|2026-11-22]]
- [[Daily/2026/11/2026-11-23|2026-11-23]]
- [[Daily/2026/11/2026-11-24|2026-11-24]]
- [[Daily/2026/11/2026-11-25|2026-11-25]]
- [[Daily/2026/11/2026-11-26|2026-11-26]]
- [[Daily/2026/11/2026-11-27|2026-11-27]]

- [[Daily/2026/11/2026-11-28|2026-11-28]]

## GitHub 原始链接
https://github.com/Tracer-Cloud/opensre

## 官方资料复核（2026-11-20）
- README：https://github.com/Tracer-Cloud/opensre/blob/HEAD/README.md
- README blob SHA：`111b126f0bfcc3df0d9ed20e4561c70d7eca695b`
- 说明：项目卡反映核对日的当前官方资料与当天实时榜单事实。


## 官方资料复核（2026-11-22）
- README：https://github.com/Tracer-Cloud/opensre/blob/HEAD/README.md
- README blob SHA：`28e036d1d7eafa9412eca60ff92ae776e88e38b2`
- 当前 README 已扩展到 CI/CD 与生产事故调查、60+ 集成、自有模型和 Python API；本次据此补充能力、用法与权限边界，不倒写历史日报。

## 最近变化
- 资料核对（2026-11-24）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`28e036d1d7eafa9412eca60ff92ae776e88e38b2`。
- 资料核对（2026-11-25）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`28e036d1d7eafa9412eca60ff92ae776e88e38b2`。
- 资料核对（2026-11-26）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`28e036d1d7eafa9412eca60ff92ae776e88e38b2`。
- 资料核对（2026-11-27）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`28e036d1d7eafa9412eca60ff92ae776e88e38b2`。


## 官方资料复核（2026-11-28）
- README：https://github.com/Tracer-Cloud/opensre/blob/HEAD/README.md
- README blob SHA：`28e036d1d7eafa9412eca60ff92ae776e88e38b2`
- 重新读取当前官方 README；正文能力、用法、实例和局限与官方材料核对，本次保留既有详细说明并仅合并当天榜单事实。
