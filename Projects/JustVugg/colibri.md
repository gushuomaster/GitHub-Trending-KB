---
type: github-project
repo: "JustVugg/colibri"
url: "https://github.com/JustVugg/colibri"
first_seen: 2026-09-11
last_seen: 2026-09-18
trending_count: 6
category: ["AI","Local-LLM","Inference"]
topics: ["AI","Local-LLM"]
---
# JustVugg/colibri

## 一句话说明
用纯 C 和磁盘流式加载专家权重，让内存较小的机器也能尝试运行大型 MoE 模型。

## 它能做什么
- 按需从磁盘加载被路由选中的专家，而不是把全部专家常驻内存
- 以零第三方依赖的 C 引擎降低运行时复杂度
- 支持量化权重、CPU 推理和对 MoE 路由的统计观察

## 怎么利用
可推导用法：准备项目支持的量化 MoE 模型和高速 SSD，编译 colibri 后输入 prompt；引擎只加载每层选中的专家并输出生成文本与性能统计。

## 实际例子
可推导用法：准备项目支持的量化 MoE 模型和高速 SSD，编译 colibri 后输入 prompt；引擎只加载每层选中的专家并输出生成文本与性能统计。

## 适合谁
研究 MoE 权重流式加载、希望在有限内存设备上实验大模型推理的系统开发者。

## 局限 / 注意点
- 磁盘吞吐和随机访问会限制速度，不能等同于 GPU 全量驻留推理；支持的模型架构与量化格式有限，生成质量仍由模型本身决定。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-11 | 12 | 未保存 | 未保存 | 日期匹配来源 |
| 2026-09-14 | 1 | 960 | 未保存 | 日期匹配来源 |
| 2026-09-15 | 1 | 未保存 | 未保存 | 日期匹配来源 |
| 2026-09-16 | 未保存 | 2035 | 未保存 | 仓库快照 |
| 2026-09-17 | 未保存 | 2026 | 未保存 | 仓库快照 |
| 2026-09-18 | 未保存 | 872 | 未保存 | 仓库快照 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Local-LLM|Local-LLM]]

## 相关日报
- [[Daily/2026/09/2026-09-11|2026-09-11]]
- [[Daily/2026/09/2026-09-14|2026-09-14]]
- [[Daily/2026/09/2026-09-15|2026-09-15]]
- [[Daily/2026/09/2026-09-16|2026-09-16]]
- [[Daily/2026/09/2026-09-17|2026-09-17]]
- [[Daily/2026/09/2026-09-18|2026-09-18]]

## GitHub 原始链接
https://github.com/JustVugg/colibri

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/JustVugg/colibri/blob/main/README.md
- 说明：项目卡反映核对日的当前官方资料，不声称这些能力与 2026-09-11 的历史版本完全相同。


## 2026-09-14 历史核验
- GitHub Trending 原始排名：#1
- Stars Today：960
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/7f52444fb280229de8751e204240886016f5c56f/archive/repository/2026/2026-09-14/(null).json)
- 归档提交时间：2026-09-14T00:00:43Z；该时间不是页面抓取时间。


## 2026-09-15 历史核验
- GitHub Trending 原始排名：#1
- Language / Total Stars / Forks / Stars Today：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/6f044aff9e480bacdd8f247c44429e626361a26a/archive/repository/2026/2026-09-15/(null).json)
- 归档提交时间：2026-09-15T04:26:32Z；该时间不是页面抓取时间。
