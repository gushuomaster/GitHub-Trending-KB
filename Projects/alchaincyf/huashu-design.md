---
type: github-project
repo: "alchaincyf/huashu-design"
url: "https://github.com/alchaincyf/huashu-design"
first_seen: "2026-10-27"
last_seen: "2026-10-27"
trending_count: 1
github_rank: 13
stars_today: 251
total_stars: 26727
forks: 2960
language: "HTML"
fetched_at: "2026-10-27T08:08:24+08:00"
documentation_checked_at: "2026-10-27"
stats_as_of: "2026-10-27"
snapshot_status: live
category: ["Design", "Agent Skill", "Presentation"]
topics: ["Design", "Agent Skill", "Prototype", "PPTX", "Motion Design"]
status: active
---
# alchaincyf/huashu-design

## 一句话说明
让支持 Skills 的 Agent 从一句需求直接产出可点击网页或 App 原型、可编辑 PPTX、动画和信息图，并用候选方向与设计体检减少模板化 AI 风格。

## 它能做什么
- 生成单文件 HTML 的 Web/App 交互原型，并用 Playwright 验证可点击流程。
- 生成浏览器演讲稿和保留文本框的可编辑 PPTX。
- 输出 MP4/GIF 动画、PDF/PNG/SVG 信息图与多个可实时调参的设计变体。
- 在六张候选缩略图中选择三个真实方向，并维护品味经验、外观账本和设计体检。
- 读取 logo、色板、UI 截图等品牌资产，并用五维度评审给出 Keep/Fix/Quick Wins。

## 怎么利用
把完整仓库安装到 Claude Code、Codex、Cursor 等支持 Skills 的 Agent，输入一句交付目标，并附上品牌资产或内容资料。Skill 先研究参考和提出方向，再生成 HTML、PPTX、视频或图形文件，最后运行浏览器验证或设计评审；输出是可直接演示、编辑或导出的本地文件。

## 实际例子
**官方案例 → 场景：** 制作《千里江山图》讲座。**输入：** 讲座主题与作品资料。**操作：** 让 Agent 选择暗场展柜方向，把 11.9 米长卷缩略图做成每页位置条，并为内容页保留来源与可编辑文本。**输出：** 浏览器可播放的 HTML deck 和文本框可编辑的 PPTX。

\`\`\`bash
npx skills add alchaincyf/huashu-design
\`\`\`

## 适合谁
需要快速交付产品原型、演讲稿、发布动画或信息图，但不想在传统图形界面里从空白画布开始的产品经理、独立开发者和内容设计团队。

## 局限 / 注意点
- 安装目录必须包含 \`references/\`、\`assets/\`、\`scripts/\`、\`demos/\`；旧版 skills CLI 可能只同步单文件，需要升级或改用 git clone。
- 不支持图层级可编辑的 PPTX 到 Figma，也不覆盖 Framer Motion 级复杂动画、3D、物理模拟或粒子系统。完全没有品牌素材时，官方说明成品质量会明显下降。
- 核心设计与导出链路本地运行；豆包 TTS、AI 看片等云功能是可选项，需要自备密钥并显式确认上传。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-27 | 13 | 251 | 26727 | 2960 | GitHub Today live snapshot |

## 相关主题
[[Topics/Design|Design]] · [[Topics/Agent-Skill|Agent-Skill]] · [[Topics/Prototype|Prototype]] · [[Topics/PPTX|PPTX]] · [[Topics/Motion-Design|Motion-Design]]

## 相关日报
- [[Daily/2026/10/2026-10-27|2026-10-27]]

## GitHub 原始链接
https://github.com/alchaincyf/huashu-design

## 官方资料复核（2026-10-27）
- README：https://github.com/alchaincyf/huashu-design/blob/master/README.md
- README blob SHA：\`4b093c449371d92cd03097ebf6e773ef365cf1fe\`

