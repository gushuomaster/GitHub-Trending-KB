---
type: github-project
repo: "cloudflare/security-audit-skill"
first_seen: 2026-10-08
last_seen: 2026-10-08
language: "JavaScript"
total_stars: 26105
forks: 1569
stars_today: 576
github_rank: 11
trending_count: 5
fetched_at: "2026-10-08T10:41:00+08:00"
url: "https://github.com/cloudflare/security-audit-skill"
---
# cloudflare/security-audit-skill

## 一句话说明
让 Coding Agent 按阶段审计代码安全问题，独立验证候选发现，并生成带覆盖证据的机器可读报告。

**官方描述：** A coding-agent skill for multi-phase security audits with independently verified, machine-readable findings

## 它能做什么
- 记录架构、信任边界和覆盖账本，按覆盖单位分派检查。
- 由新验证者尝试证伪候选，区分 confirmed、needs_validation 和 rejected。
- 校验 findings.json 与覆盖账本，再生成报告和未验证事项。

此前能力说明：让 Coding Agent 按多阶段流程审计代码安全问题，并把发现独立验证后输出机器可读结果。

## 怎么利用
输入有审计授权的代码仓库与输出位置，让支持工具和独立子 Agent 的宿主执行安全审计；先做侦察与覆盖检查，再验证候选，输出 findings.json、REPORT.md 等产物，人工复核。

此前工作流说明：让 Coding Agent 按多阶段流程审计代码安全问题，并把发现独立验证后输出机器可读结果。

## 实际例子
**官方 Usage → 场景：** 审计一个代码库并保存结果。**输入：** 仓库与 ~/audits/my-project。**操作：** 安装后向 Agent 请求 do a security review, output to ~/audits/my-project。**输出：** 验证后的结构化发现和报告；缺少强制沙箱时不得执行目标代码，相关线索保留 needs_validation。

```sh
npx skills add https://github.com/cloudflare/security-audit-skill --skill security-audit
```

**已有场景（可推导用法；具体命令及兼容性以本次核对为准）：**
场景：合并前安全审查 → 把仓库交给支持 Skills 的 Coding Agent → skill 分阶段发现、验证和整理漏洞 → 输出带证据的结构化 findings，供人工或 CI 继续处理。

> 资料核对日期：2026-10-08。以上优先依据仓库 README/官方描述；若涉及工作流组合，则按项目已声明能力进行具体化，不视为额外官方承诺。

## 适合谁
需要对仓库做可追踪安全审计的 AppSec 工程师与维护者。

## 局限 / 注意点
安全审计不能替代专业人工渗透/威胁建模；自动发现仍可能漏报或误报。 完整审计需要支持工具和独立子 Agent 的宿主、Node.js 及 OS 强制沙箱；单次运行的覆盖并不完整。

## Trending 历史
- 2026-09-17：#undefined · Stars Today：1434
- 2026-09-19：#2 · Stars Today：3019
- 2026-09-20：#1 · Stars Today：3162
- 2026-09-21：#1 · Stars Today：3162
- 2026-10-08：#11 · Stars Today：576 · Total Stars：26105 · Forks：1569

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/09/2026-09-17|2026-09-17]]
- [[Daily/2026/09/2026-09-19|2026-09-19]]
- [[Daily/2026/09/2026-09-20|2026-09-20]]
- [[Daily/2026/09/2026-09-21|2026-09-21]]
- [[Daily/2026/10/2026-10-08|2026-10-08]]

## GitHub
https://github.com/cloudflare/security-audit-skill

## 官方资料核对
- 核对日期：2026-10-08
- README：https://github.com/cloudflare/security-audit-skill/blob/main/README.md
- README blob SHA：c80305c88cd5087db37f76a0d230c1fc092c864c
