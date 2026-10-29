---
type: github-project
repo: "expo/skills"
url: "https://github.com/expo/skills"
first_seen: "2026-10-29"
last_seen: "2026-10-29"
trending_count: 1
github_rank: 12
stars_today: 90
total_stars: 3564
forks: 227
language: "Shell"
fetched_at: "2026-10-29T08:08:39+08:00"
documentation_checked_at: "2026-10-29"
stats_as_of: "2026-10-29"
snapshot_status: live
category: ["Agent Skills", "Expo", "Mobile Development"]
topics: ["Expo", "React Native", "EAS", "Coding Agent"]
status: active
---
# expo/skills

## 一句话说明
由 Expo 团队维护的一组 AI Agent Skills，帮助编码 Agent 按 Expo、React Native 和 EAS 的真实约束完成建构、升级、调试与发布任务。

## 它能做什么
- 指导 Expo Router、项目结构、数据请求、动画、原生 UI、设计系统和 Web-to-Native 迁移。
- 覆盖原生模块、Brownfield 集成、开发客户端、App Clip 与 SDK 升级等工程任务。
- 提供 EAS Build/商店提交、Hosting、Workflows、Update、Observe 和远程模拟器等服务流程。
- 可作为 Claude Code、Codex 插件安装，也可通过 skills CLI 安装到 Cursor、OpenCode、Copilot 等宿主。

## 怎么利用
在 Expo 项目根目录安装插件或全部 Skills，重启 Agent 会话后描述具体任务并提供项目代码、目标平台和版本约束。Agent 先从 `expo-overview` 路由到专项 Skill，再依据 Expo 文档、CLI 和 EAS CLI 修改配置或代码，最终得到可审查的项目变更、升级步骤或构建工作流。

## 实际例子
**官方示例 → 场景：** 为拉取请求建立 EAS 预览构建。**输入：** Expo 项目、目标平台和“在 PR 上构建 preview”的要求。**操作：** 安装 Skills 后向 Agent 提出该请求，Agent 选择 `eas-workflows`，生成并解释相应 Workflow YAML。**输出：** 可提交到仓库并由 EAS 执行的预览构建工作流。


```bash
npx skills@latest add expo/skills --skill '*'
```

## 适合谁
使用 Expo 或 React Native 开发 iOS、Android 与 Web 应用，并希望让 Coding Agent 遵循官方工程边界的移动端开发者和平台团队。

## 局限 / 注意点
- README 明确 Expo 文档、Expo CLI 和 EAS CLI 才是事实来源；Skills 可能落后于最新 SDK，重要升级与发布必须再次核对官方工具输出。
- 多项 EAS 服务涉及付费计划、云资源或商店账号；实验 Skills 单独发布且可能变化或撤销，不能与稳定能力混为一谈。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-29 | 12 | 90 | 3564 | 227 | GitHub Today live snapshot |

## 相关主题
[[Topics/Expo|Expo]] · [[Topics/React-Native|React-Native]] · [[Topics/EAS|EAS]] · [[Topics/Agent-Skill|Agent-Skill]]

## 相关日报
- [[Daily/2026/10/2026-10-29|2026-10-29]]

## GitHub 原始链接
https://github.com/expo/skills

## 官方资料复核（2026-10-29）
- README：https://github.com/expo/skills/blob/main/README.md
- README blob SHA：`ec0de77b01fedee1fc814a46fd9d88e54ce13243`
