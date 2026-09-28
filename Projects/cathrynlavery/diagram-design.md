---
repo: "cathrynlavery/diagram-design"
first_seen: 2026-09-09
last_seen: 2026-09-11
recommend_score: 9.4
trending_count: 3
stars_today: 2249
category: ["AI", "Developer Tools", "Diagram"]
tags: ["github/agent", "github/diagram", "github/svg", "github/architecture", "github/docs"]
---

# cathrynlavery/diagram-design

## 项目定位
为 Coding Agent 提供专业图表/架构图设计 Skill，并用验证器把视觉规则工程化。

## 核心功能 / 实现特点
- HTML+SVG + Python/self-check。
- 支持 Mermaid/draw.io/Excalidraw 导入重绘。
- CI 检查资源、安全、几何和兼容问题。

## 主要优点
- 不止是提示模板，而是可测试的视觉语法。
- 适合架构设计、技术文档和 Agent 自动制图。
- 对生成稳定性有明确验证层。

## 局限 / 注意点
- 不是完整交互式设计软件。
- 视觉质量仍取决于布局规则执行和验证覆盖率。

## 最近变化
- 今日 +2249 stars，昨日 +2286，高位稳定。
- 发布 2.6.22；加入 GitHub Copilot marketplace 安装并修复 Cowork 插件描述限制。
- 推荐分维持 9.4。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-09 | +710 | 9.2 |
| 2026-09-10 | +2286 | 9.4 |
| 2026-09-11 | +2249 | 9.4 |

## 相关主题
- [[AI]]
- [[Developer-Tools]]
- [[Skills]]

## 相关日报
- [[2026-09-10]]
- [[2026-09-11]]

## 怎么利用
让 Coding Agent 根据系统说明生成 HTML+SVG 图，再运行自检检查几何、资源和兼容性；人工复核语义和视觉层级。

## 实际例子
**可推导用法：** 场景 → 绘制 RAG 服务架构图。输入 → API、解析、向量库和 LLM 的关系。操作 → 生成 SVG 并通过 validator。输出 → 可嵌入技术文档的清晰架构图。
