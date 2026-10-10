---
type: github-project
repo: "twostraws/SwiftUI-Agent-Skill"
url: "https://github.com/twostraws/SwiftUI-Agent-Skill"
first_seen: 2026-10-10
last_seen: 2026-10-10
trending_count: 1
language: "未声明"
total_stars: 5413
forks: 196
stars_today: 65
github_rank: 11
fetched_at: "2026-10-10T08:02:00+08:00"
category: ["iOS","Developer Tools"]
tags: ["github/ios","github/developer-tools"]
---
# twostraws/SwiftUI-Agent-Skill

## 一句话说明
给 Coding Agent 增加 SwiftUI 专项审查规则，重点发现过时 API、VoiceOver 可访问性和性能问题。

**官方描述：** SwiftUI agent skill for Claude Code, Codex, and other AI tools.

## 它能做什么
- 以 Agent Skills 格式兼容 Claude Code、Codex、Gemini 与 Cursor
- 审查 SwiftUI 常见弃用 API、可访问性和性能陷阱
- 允许用 `/swiftui-pro`、`$swiftui-pro` 或自然语言触发
- 可限定只检查某一类问题，例如 accessibility

## 怎么利用
官方示例：在 iOS 项目安装 `swiftui-pro` 后运行 `$swiftui-pro Focus on accessibility`；技能读取 SwiftUI 代码并针对 VoiceOver、控件语义和相关实现给出专项审查与修改建议。

## 实际例子
**场景：** 在提交前专项检查一组 SwiftUI 界面的无障碍问题。

**输入：** 包含 SwiftUI View 的 iOS 代码仓库。

**操作：** 安装技能后在 Codex 中运行 `$swiftui-pro Focus on accessibility`，让 Agent 按技能规则检查 VoiceOver 与控件语义。

**结果：** 得到针对具体代码位置的无障碍风险与修改建议，再用编译和真实设备测试验证。

## 关键命令
```sh
npx skills add https://github.com/twostraws/swiftui-agent-skill --skill swiftui-pro
```

## 适合谁
使用 Coding Agent 编写或评审 SwiftUI 的 iOS 工程师，尤其关注新 API、性能和无障碍质量的团队。

## 局限 / 注意点
它是规则与经验集，不能替代编译、单元测试、Instruments 和真实设备无障碍测试；README 标示面向 iOS 26+、Swift 6.4+，旧版本项目需人工调整。

## Trending 历史
- 2026-10-10：#11 · Stars Today：65 · Total Stars：5413 · Forks：196

## 相关主题
- [[Topics/iOS]]
- [[Topics/Developer Tools]]

## 相关日报
- [[Daily/2026/10/2026-10-10|2026-10-10]]

## GitHub 原始链接
https://github.com/twostraws/SwiftUI-Agent-Skill

## 官方资料核对
- 核对日期：2026-10-10
- README：https://github.com/twostraws/SwiftUI-Agent-Skill/blob/main/README.md
- README blob SHA：12e282c9336a10d31c23d53a586d2049e2b77525
