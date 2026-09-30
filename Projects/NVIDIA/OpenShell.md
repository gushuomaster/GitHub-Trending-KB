---
repo: "NVIDIA/OpenShell"
url: "https://github.com/NVIDIA/OpenShell"
first_seen: 2026-09-30
last_seen: 2026-09-30
trending_count: 1
github_rank: 2
stars_today: 990
total_stars: 10565
forks: 1419
language: Rust
fetched_at: "2026-09-30T08:04:00+08:00"
category: ["AI", "Security", "Agent Infrastructure"]
tags: ["agent", "sandbox", "policy", "isolation", "credentials"]
topics: ["AI", "Security", "Agent"]
status: active
---
# NVIDIA/OpenShell

## 一句话说明
为自主 Agent 提供受策略约束的隔离运行环境，让它们能访问文件、安装包、调用 API 和使用凭据，却不能任意读取主机数据或访问网络。

## 它能做什么
- 把每个 Agent 放进独立 sandbox，并在内核层限制文件、系统调用和网络连接。
- 在应用策略变更前用形式化验证指出新增的高风险访问。
- 只在请求发往获准端点时注入真实凭据，Agent 本身看不到密钥。
- 通过 gateway、SDK、Kubernetes 和扩展机制管理一组 Agent sandbox。

## 怎么利用
先在开发机安装 OpenShell，创建最小 sandbox；将 Coding Agent 放进 sandbox 后，只为确实需要的仓库目录、包源和模型 API 增加规则。策略顾问发现缺口时先检查影响，再由人批准，最终得到可复现、受控的 Agent 执行环境。

## 实际例子
**官方入门场景 →** 在隔离环境运行 OpenCode。 **输入 →** 一个代码仓库、OpenRouter 推理端点和最小文件/网络权限。 **操作 →** 创建 sandbox，按照“Run Your First Agent”把 OpenCode 放进去；当 Agent 请求新域名或文件路径时审查策略变化。 **输出 →** Agent 能修改获准仓库并调用获准模型，但无法读取其他目录或把凭据发送到未批准主机。

    curl -LsSf https://raw.githubusercontent.com/NVIDIA/OpenShell/main/install.sh | sh
    openshell sandbox create --name demo

## 适合谁
需要让 Coding Agent 或后台 Agent 真实执行命令，同时必须控制文件、网络、凭据和审计边界的平台团队与安全工程师。

## 局限 / 注意点
需要 Linux、Apple Silicon macOS，或实验性的 Windows WSL 2，并依赖 Docker、Podman 或宿主虚拟化。安全性仍取决于策略是否正确、宿主与网关是否及时更新；匿名遥测默认启用但可关闭。安装脚本和策略放权都应先审查。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-30 | 2 | +990 | 10565 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Security|Security]] · [[Topics/Agent|Agent]]

## 相关日报
- [[Daily/2026/09/2026-09-30|2026-09-30]]

