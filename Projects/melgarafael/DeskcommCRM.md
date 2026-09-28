---
repo: "melgarafael/DeskcommCRM"
first_seen: 2026-09-13
last_seen: 2026-09-14
recommend_score: 8.7
trending_count: 2
stars_today: 444
category: ["AI", "Agent", "Automation", "RAG"]
tags: ["github/agent", "github/crm", "github/automation", "github/rag", "github/whatsapp", "github/typescript"]
---

# melgarafael/DeskcommCRM

## 项目定位
自托管 AI Sales OS/CRM，把 WhatsApp、AI Agents、follow-up、RAG、多租户与销售自动化整合进完整业务系统。

## 核心功能 / 实现特点
- TypeScript/React/Node/Supabase 全栈，包含 CRM、消息、Agent、知识库、follow-up、审计、多租户和 `.agents/.claude/.codex/.cursor/.specs`。
- 1.20.0 于 9 月 12 日发布；随后 Issue 更集中暴露知识源编辑/归档、RAG 一致性、事件消费和删除事务等真实生产边界。

## 主要优点
- 能观察 Agent/RAG 如何进入真实销售业务流程，而非单点 Demo
- 自托管、多租户、CRM、WhatsApp、知识库和自动化链路完整
- Issue 通常带代码路径、复现和数据证据，适合研究生产级 Agent 产品治理

## 局限 / 注意点
- RAG 部分 chunk 写入失败仍可能激活不完整版本；归档知识源可让 Agent 配置进入不可编辑状态
- 联系人删除存在先删消息/会话、再删联系人失败后历史已丢失的事务风险；event_log 也有长期未消费类型

## 最近变化
- 连续第 2 天上榜：+505 → +444 stars，热度略降。1.20.0 后没有同等强度的新代码提交，而多条生产一致性 Issue 继续出现，因此评分 **9.0 → 8.7**。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-13 | +505 | 9.0 |
| 2026-09-14 | +444 | 8.7 |

## 相关主题
- [[AI]]
- [[Agent]]
- [[RAG]]

## 相关日报
- [[2026-09-13]]
- [[2026-09-14]]

## 怎么利用
自托管 CRM 后连接授权的 WhatsApp 渠道、知识库和 follow-up Agent；先在测试租户验证 RAG 版本、删除事务和事件消费。

## 实际例子
**可推导用法：** 场景 → 跟进电商潜在客户。输入 → 产品资料、联系人和消息授权。操作 → Agent回答咨询并按规则创建跟进。输出 → CRM 记录、对话历史和待办。
