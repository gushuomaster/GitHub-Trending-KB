---
type: github-project
repo: "Flowseal/zapret-discord-youtube"
url: "https://github.com/Flowseal/zapret-discord-youtube"
first_seen: 2026-09-13
last_seen: 2026-09-13
trending_count: 1
category: ["Networking","Windows","Privacy"]
topics: ["Networking","Windows","Privacy"]
---
# Flowseal/zapret-discord-youtube

## 一句话说明
面向 Windows 的 zapret/winws 配置包，通过测试不同 DPI 处理策略来恢复 Discord、YouTube 等目标服务的连接。

## 它能做什么
- 提供多套可切换的 winws 流量处理策略
- 通过 service.bat 测试策略、安装服务、查看状态和运行诊断
- 维护 IPSet、hosts、fake 数据与自动更新检查

## 怎么利用
官方流程：先启用安全 DNS，从 Releases 下载并解压到不含特殊字符的路径；以管理员运行 `service.bat`，依次选择 Run Tests → Standard tests → All configs，确认可用策略后再安装为服务。

## 实际例子
**官方材料中的工作流：** 官方流程：先启用安全 DNS，从 Releases 下载并解压到不含特殊字符的路径；以管理员运行 `service.bat`，依次选择 Run Tests → Standard tests → All configs，确认可用策略后再安装为服务。

## 关键命令
```text
service.bat → Run Tests → Standard tests → All configs
```

## 适合谁
需要在有权管理的 Windows 网络环境中诊断 DPI 干扰的高级用户与网络管理员。

## 局限 / 注意点
- 仅适合有权管理的 Windows 设备和当地法律允许的网络场景；WinDivert 会触发安全软件，管理员级流量拦截与来路不明的第三方打包都有系统风险。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-13 | 5 | 未保存 | 未保存 | 日期匹配来源 |

## 相关主题
[[Topics/Networking|Networking]] · [[Topics/Windows|Windows]] · [[Topics/Privacy|Privacy]]

## 相关日报
- [[Daily/2026/09/2026-09-13|2026-09-13]]

## GitHub 原始链接
https://github.com/Flowseal/zapret-discord-youtube

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/Flowseal/zapret-discord-youtube/blob/HEAD/README.md
- 说明：项目卡反映核对日的当前官方资料，不声称这些能力与历史上榜日的项目版本完全相同。
