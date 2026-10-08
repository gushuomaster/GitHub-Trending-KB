---
type: github-project
repo: "addyosmani/agent-skills"
first_seen: 2026-10-08
last_seen: 2026-10-08
language: "JavaScript"
total_stars: 102870
forks: 10776
stars_today: 677
github_rank: 6
trending_count: 7
fetched_at: "2026-10-08T10:41:00+08:00"
url: "https://github.com/addyosmani/agent-skills"
---
# addyosmani/agent-skills

## 一句话说明
把软件开发中的规格、计划、实现、测试、评审和发布流程包装成技能，帮助 Agent 按阶段验证改动。

**官方描述：** Production-grade engineering skills for AI coding agents.

## 它能做什么
- 通过 spec、plan、build、test、review、ship 等入口组织开发生命周期。
- 用 TDD、约束检查和代码质量评审验证实现。
- 提供 API 设计、前端工程和性能测量等任务技能。

此前能力说明：把规格、API 设计、TDD、代码审查、性能、发布等工程流程拆成可组合 Agent Skills。

## 怎么利用
输入需求与现有仓库，先澄清规格和质量约束，再拆成可验证任务；Agent 逐项实现、测试和评审，输出代码变更及验证证据。宿主原生命令与技能调用方式须按其安装文档选择。

此前工作流说明：把规格、API 设计、TDD、代码审查、性能、发布等工程流程拆成可组合 Agent Skills。

## 实际例子
**官方 Quick Start → 场景：** 先给 Agent 增加单项代码评审能力。**输入：** 已有候选 diff 和仓库。**操作：** 安装 code-review-and-quality，再请求合并前评审。**输出：** 依据技能维度给出的代码健康检查结果；不自动保证可发布。

```sh
npx skills add addyosmani/agent-skills --skill code-review-and-quality
```

**已有场景（可推导用法；具体命令及兼容性以本次核对为准）：**
场景：从需求到上线实现一个 API → 先用 interview/spec 类 skill 对齐要求，再用 plan/build/test/review/ship 串起实现与验证 → 输出分阶段代码变更和测试证据。安装：`npx skills add addyosmani/agent-skills`。

> 资料核对日期：2026-10-08。以上优先依据仓库 README/官方描述；若涉及工作流组合，则按项目已声明能力进行具体化，不视为额外官方承诺。

## 适合谁
希望用规格和验证门槛管理 Coding Agent 的软件团队。

## 局限 / 注意点
技能数量多，需要按任务选择；单独安装某个 skill 时共享 references 可能不会一并复制。

## Trending 历史
- 2026-09-16：#undefined · Stars Today：386
- 2026-09-17：#undefined · Stars Today：307
- 2026-09-19：#4 · Stars Today：677
- 2026-09-20：#3 · Stars Today：547
- 2026-10-04：#10 · Stars Today：未保存
- 2026-10-05：#12 · Stars Today：未保存
- 2026-10-08：#6 · Stars Today：677 · Total Stars：102870 · Forks：10776

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/09/2026-09-16|2026-09-16]]
- [[Daily/2026/09/2026-09-17|2026-09-17]]
- [[Daily/2026/09/2026-09-19|2026-09-19]]
- [[Daily/2026/09/2026-09-20|2026-09-20]]
- [[Daily/2026/10/2026-10-04|2026-10-04]]
- [[Daily/2026/10/2026-10-05|2026-10-05]]
- [[Daily/2026/10/2026-10-08|2026-10-08]]

## GitHub
https://github.com/addyosmani/agent-skills

## 官方资料核对
- 核对日期：2026-10-08
- README：https://github.com/addyosmani/agent-skills/blob/main/README.md
- README blob SHA：c6039f4d64f900f75303ecfa8d67a527eebad851
