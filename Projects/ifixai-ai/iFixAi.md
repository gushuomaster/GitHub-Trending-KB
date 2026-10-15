---
type: github-project
repo: ifixai-ai/iFixAi
url: https://github.com/ifixai-ai/iFixAi
first_seen: '2026-10-15'
last_seen: '2026-10-15'
trending_count: 1
language: Python
total_stars: 27361
forks: 1502
stars_today: 2109
github_rank: 7
fetched_at: '2026-10-15T08:02:04+08:00'
category: [AI, Agent, Audit]
topics: [AI, Agent, Evaluation]
documentation_checked_at: '2026-10-15'
stats_as_of: '2026-10-15'
---

# ifixai-ai/iFixAi

## 一句话说明
独立审计 AI Agent 是否遵守业务 KPI 与组织政策，并把隐蔽的错误或有害行为整理成可复核的评分卡。

## 它能做什么
- 通过向导、命令行、插件或 Skill 发起 Agent 审计。
- 运行默认 10 项或完整 60 项检查，覆盖目标、策略与执行行为。
- 可测试真实 HTTP Agent、裸模型或内置 mock，并支持独立 judge 模型。
- 把证据、失败项和分数写入本地结果目录，便于比较修复前后表现。

## 怎么利用
先用内置 mock 验证审计环境，再提供待测 Agent 端点、测试夹具、提供商和 judge 配置。输入是任务目标、组织约束与 Agent 响应；iFixAi 运行检查并评分，输出 `ifixai-results` 中的报告和可定位失败项。

## 实际例子
**官方 smoke test → 场景：** 验证审计器能否识别预置的坏行为。**输入：** 内置 mock Agent 和种子测试。**操作：** 安装 OpenAI 扩展并以 mock、自评模式运行。**输出：** 一张故意包含失败项的评分卡，证明检测链路有效；随后再换成真实 Agent 端点。

## 关键命令
```sh
pip install "ifixai[openai]"
ifixai run --provider mock --api-key not-used --eval-mode self
```

## 适合谁
需要上线前验证客服、交易、运营或内部 Agent 是否遵守业务规则的 AI 平台团队、风险与审计人员。

## 局限 / 注意点
默认 fixture 故意植入缺陷，不能把其失败率当成真实 Agent 质量。正式审计需要自定义夹具、端点和 judge，可能产生模型费用；自评模式不适合高风险结论。项目会发送假名化遥测，敏感环境应先检查设置与数据政策。

## Trending 历史
- 2026-10-15：#7 · Stars Today：2109 · Total Stars：27361 · Forks：1502

## 相关主题
[[Topics/AI|AI]] · [[Topics/Agent|Agent]] · [[Topics/Evaluation|Evaluation]]

## 相关日报
- [[Daily/2026/10/2026-10-15|2026-10-15]]

## GitHub 原始链接
https://github.com/ifixai-ai/iFixAi

## 官方资料核对（2026-10-15）
- README：https://github.com/ifixai-ai/iFixAi/blob/main/README.md

