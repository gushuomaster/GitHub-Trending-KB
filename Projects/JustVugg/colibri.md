---
repo: "JustVugg/colibri"
first_seen: 2026-09-14
last_seen: 2026-09-18
recommend_score: 9.5
trending_count: 5
stars_today: 872
category: ["AI","Developer Tools","Local LLM"]
tags: ["github/local-llm","github/inference","github/c","github/moe"]
---
# JustVugg/colibri
## 项目定位
纯 C、零依赖的 MoE 本地推理引擎，通过磁盘流式加载专家，把 NVMe/RAM/VRAM 组合成可运行超大模型的异构内存层。
## 最近变化
- 2026-09-18：约 +872 stars，较昨日 +2026 明显回落，但仍保持 Trending 高位。
- 技术关注点仍集中在 prefix reuse、GPU/Vulkan、量化正确性和真实 I/O 吞吐。
- 推荐分维持 9.5：底层路线有价值，但不能用 Star 热度替代真实性能基准。
## 局限 / 注意点
磁盘带宽、随机 I/O 与专家命中率直接影响吞吐；不能把“能运行”误解为高并发高性能推理。
## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-14 | +960 | 9.6 |
| 2026-09-15 | +652 | 9.5 |
| 2026-09-16 | +2035 | 9.5 |
| 2026-09-17 | +2026 | 9.5 |
| 2026-09-18 | +872 | 9.5 |
## 相关主题
[[Developer-Tools]] · [[Context-Engineering]]
## 相关日报
- [[2026-09-14]]
- [[2026-09-15]]
- [[2026-09-16]]
- [[2026-09-17]]
- [[2026-09-18]]

## 怎么利用
将超大 MoE 模型转换为项目支持的格式，把常用层放入 RAM/VRAM、专家权重从 NVMe 流式加载，用小并发进行本地推理实验。

## 实际例子
**可推导用法：** 场景 → 在显存不足的工作站研究超大 MoE。输入 → 模型权重、NVMe、RAM 和 GPU。操作 → 配置分层加载并运行单请求基准。输出 → 能否运行、吞吐和 I/O 瓶颈数据。
