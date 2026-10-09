---
type: github-project
repo: "mattpocock/skills"
first_seen: 2026-09-26
last_seen: 2026-10-09
language: "Shell"
total_stars: 281047
forks: 23557
stars_today: 1774
github_rank: 4
trending_count: 8
fetched_at: "2026-10-09T08:09:00+08:00"
url: "https://github.com/mattpocock/skills"
---
# mattpocock/skills

## 一句话说明
把需求澄清、调试、测试和评审拆成可编辑的小型技能，让 Coding Agent 执行工程任务时保留用户控制权。

**官方描述：** Skills for Real Engineers. Straight from my .agents directory.

## 它能做什么
- 用 grill-me 等技能追问需求，减少实现与目标不一致。
- 按任务组合调试、测试、设计和评审技能。
- 将技能作为项目内普通文件安装、修改和版本管理。


## 怎么利用
输入项目仓库及功能需求，用 skills CLI 选择所需技能和宿主；每个仓库运行 setup 配置 Issue 系统、标签和文档位置，再调用对应技能，输出对齐后的需求、计划及验证结果。


## 实际例子
**官方安装流程 → 场景：** 为 Codex 配置工程技能。**输入：** 本地仓库和 Issue 管理偏好。**操作：** 安装时勾选 setup-matt-pocock-skills，随后在 Agent 中运行 /setup-matt-pocock-skills。**输出：** 可编辑技能及该仓库的工作流配置。

```sh
npx skills@latest add mattpocock/skills
```

**已有场景（可推导用法；具体命令及兼容性以本次核对为准）：**
场景：准备让 Codex 改一个复杂功能 → 安装 skills 后先用 grill-with-docs 澄清需求和术语，再进入实现/测试技能 → 输出更明确的设计决策、任务和验证结果。安装：`npx skills@latest add mattpocock/skills`。

> 资料核对日期：2026-10-09。以上优先依据仓库 README/官方描述；若涉及工作流组合，则按项目已声明能力进行具体化，不视为额外官方承诺。

## 适合谁
希望逐项选择和定制 Agent 工作流的软件工程师。

## 局限 / 注意点
技能是工作流约束而不是自动正确性保证；同时安装多个分发方式可能造成重复技能。

## Trending 历史
- 2026-09-26：#5 · Stars Today：未保存
- 2026-10-01：#9 · Stars Today：876
- 2026-10-02：#2 · Stars Today：未保存
- 2026-10-03：#6 · Stars Today：未保存
- 2026-10-04：#12 · Stars Today：未保存
- 2026-10-07：#2 · Stars Today：未保存
- 2026-10-08：#2 · Stars Today：1403 · Total Stars：279738 · Forks：23449
- 2026-10-09：#4 · Stars Today：1774 · Total Stars：281047 · Forks：23557

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/09/2026-09-26|2026-09-26]]
- [[Daily/2026/10/2026-10-01|2026-10-01]]
- [[Daily/2026/10/2026-10-02|2026-10-02]]
- [[Daily/2026/10/2026-10-03|2026-10-03]]
- [[Daily/2026/10/2026-10-04|2026-10-04]]
- [[Daily/2026/10/2026-10-07|2026-10-07]]
- [[Daily/2026/10/2026-10-08|2026-10-08]]
- [[Daily/2026/10/2026-10-09|2026-10-09]]

## GitHub
https://github.com/mattpocock/skills

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/mattpocock/skills/blob/main/README.md
- README blob SHA：f7038f139299985eea6c3e18398dbafb379a0010

