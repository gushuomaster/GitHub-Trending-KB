---
type: github-project
repo: "ayghri/i-have-adhd"
first_seen: 2026-10-08
last_seen: 2026-10-08
language: "Python"
total_stars: 55199
forks: 3164
stars_today: 619
github_rank: 4
trending_count: 6
fetched_at: "2026-10-08T10:41:00+08:00"
url: "https://github.com/ayghri/i-have-adhd"
---
# ayghri/i-have-adhd

## 一句话说明
调整 Coding Agent 的回答结构，先给下一步动作、编号步骤和明确收尾，降低冗长回答的阅读负担。

**官方描述：** A skill to stop your coding agent from burying the answer. ADHD-friendly output.

## 它能做什么
- 把下一步行动放在回答开头，并给多步任务编号。
- 限制旁支话题与列表长度，减少无关铺垫。
- 每轮重述当前状态，并用具体下一步推进。

此前能力说明：给 Coding Agent 加一组输出行为规则，让回答先给动作、步骤编号、减少旁支和冗余。

## 怎么利用
在支持技能的 Coding Agent 安装规则集，输入明确的代码修复问题；规则约束回复组织方式，输出文件位置、编号操作与验证命令。可修改 SKILL.md 调整规则。

此前工作流说明：给 Coding Agent 加一组输出行为规则，让回答先给动作、步骤编号、减少旁支和冗余。

## 实际例子
**官方 Before/After → 场景：** 修复 auth.ts 的 token 验证。**输入：** src/auth.ts 中 verifyToken 的问题。**操作：** 启用技能后要求修复；回答先指出文件位置，再列打开文件、替换代码和运行 auth.spec.ts 的步骤。**输出：** 清晰的修改顺序及失败时需要提供的首条报错。

**已有场景（可推导用法；具体命令及兼容性以本次核对为准）：**
场景：Agent 经常输出很长但下一步不明确 → 安装该 skill/plugin → 同一个修复任务会优先给出要改的文件、编号步骤和测试命令 → 输出更短、更可执行的回复。

> 资料核对日期：2026-10-08。以上优先依据仓库 README/官方描述；若涉及工作流组合，则按项目已声明能力进行具体化，不视为额外官方承诺。

## 适合谁
经常阅读长篇 Agent 回复、需要清晰行动步骤的编码用户。

## 局限 / 注意点
它主要改变交互/输出风格，不提高底层模型事实正确率；规则可能不适合需要长篇论证的任务。

## Trending 历史
- 2026-09-09：#undefined · Stars Today：656
- 2026-09-10：#undefined · Stars Today：4624
- 2026-09-11：#undefined · Stars Today：4650
- 2026-09-12：#undefined · Stars Today：3882
- 2026-10-07：#7 · Stars Today：未保存
- 2026-10-08：#4 · Stars Today：619 · Total Stars：55199 · Forks：3164

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/09/2026-09-09|2026-09-09]]
- [[Daily/2026/09/2026-09-10|2026-09-10]]
- [[Daily/2026/09/2026-09-11|2026-09-11]]
- [[Daily/2026/09/2026-09-12|2026-09-12]]
- [[Daily/2026/10/2026-10-07|2026-10-07]]
- [[Daily/2026/10/2026-10-08|2026-10-08]]

## GitHub
https://github.com/ayghri/i-have-adhd

## 官方资料核对
- 核对日期：2026-10-08
- README：https://github.com/ayghri/i-have-adhd/blob/main/README.md
- README blob SHA：c2ca8ed5a1409959beb7210d30ab94c720a6d36a
