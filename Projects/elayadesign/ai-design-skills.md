---
type: github-project
repo: "elayadesign/ai-design-skills"
url: "https://github.com/elayadesign/ai-design-skills"
first_seen: "2026-10-28"
last_seen: "2026-10-28"
trending_count: 1
github_rank: 1
stars_today: 1395
total_stars: 9268
forks: 667
language: "未声明"
fetched_at: "2026-10-28T08:05:36+08:00"
documentation_checked_at: "2026-10-28"
stats_as_of: "2026-10-28"
snapshot_status: live
category: ["Design Skill", "Landing Page", "Agent Skill"]
topics: ["Web Design", "Conversion", "Agent Skill", "Frontend"]
status: active
---
# elayadesign/ai-design-skills

## 一句话说明
为 Claude Code、Cursor、Codex 等 AI 编码工具提供可复制的设计规则，让 Agent 从转化目标、页面结构和文案出发，按一套明确视觉系统构建落地页。

## 它能做什么
- 用一组集中问题收集主行动、受众、异议、流量来源、证明素材和品牌约束。
- 在四类布局中选型，并组织首屏、利益点、工作方式、社会证明、FAQ 和最终 CTA。
- 约束字体、字号、间距、圆角、颜色、图标、动效和响应式断点，减少随意生成的视觉值。
- 按 Hero → Benefits → How it works → Proof → FAQ → CTA 的顺序逐段实现，并补充 SEO/AEO 检查。

## 怎么利用
把目标 Skill 安装到项目规则目录，并向 Agent 提供产品、目标受众、唯一转化动作、真实证明素材和移动端约束。Skill 会先补齐缺失信息，再选择页面结构、生成转化文案和视觉令牌，按段实现页面；最终得到可审查的落地页源码、明确 CTA 以及需要人工确认的假设。

## 实际例子
**官方 Skill 工作流 → 场景：** 为一个面向设计团队的 SaaS 制作试用注册页。**输入：** “开始免费试用”这一主行动、目标用户、三项异议、产品截图和品牌语气。**操作：** Agent 一次性询问缺失信息，选择 Classic hero + sections，先完成 Hero，再依次实现利益点、三步流程、证明、FAQ 和最终 CTA，并按规定检查字体、间距和移动端。**输出：** 围绕一个转化目标、使用真实证明且结构完整的页面实现。

    mkdir -p .claude/skills
    git clone https://github.com/elayadesign/ai-design-skills.git /tmp/ai-design-skills
    cp -r /tmp/ai-design-skills/skills/landing-page-design .claude/skills/

## 适合谁
希望让 Coding Agent 直接制作营销页、原型或页面组件，同时需要统一转化结构和视觉令牌的产品设计师、独立开发者和前端团队。

## 局限 / 注意点
- 当前仓库只列出 `landing-page-design` 一项 Skill；升级既有网站应使用作者单独维护的 redesign Skill。
- 规则非常具体，可能与既有 Design System 冲突；用户明确要求优先，但仍应把品牌规范写进输入并人工检查。Codex 等宿主需要把 `SKILL.md` 放到实际支持的规则文件位置。
- GitHub Trending 页面未显示官方描述和主要语言，本卡不据仓库名猜测，语言记为“未声明”。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-28 | 1 | 1395 | 9268 | 667 | GitHub Today live snapshot |

## 相关主题
[[Topics/Web-Design|Web-Design]] · [[Topics/Conversion|Conversion]] · [[Topics/Agent-Skill|Agent-Skill]] · [[Topics/Frontend|Frontend]]

## 相关日报
- [[Daily/2026/10/2026-10-28|2026-10-28]]

## GitHub 原始链接
https://github.com/elayadesign/ai-design-skills

## 官方资料复核（2026-10-28）
- README：https://github.com/elayadesign/ai-design-skills/blob/main/README.md
- README blob SHA：`32677792be09e0b9fba13b10c2f94a804c488900`
- landing-page-design Skill：https://github.com/elayadesign/ai-design-skills/blob/main/skills/landing-page-design/SKILL.md

