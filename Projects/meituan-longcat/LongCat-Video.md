---
type: github-project
repo: meituan-longcat/LongCat-Video
first_seen: '2026-10-04'
last_seen: '2026-10-04'
url: https://github.com/meituan-longcat/LongCat-Video
trending_count: 1
github_rank: 18
documentation_checked_at: '2026-10-13'
stats_as_of: null
stars_today: null
total_stars: null
forks: null
language: null
---

# meituan-longcat/LongCat-Video

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
美团开源的视频生成研究项目，基础模型支持文本生视频、图像生视频和视频续写，另有音频驱动角色版本。

## 它能做什么
- 13.6B 基础模型将 Text-to-Video、Image-to-Video 和 Video-Continuation 合并到一个框架。
- 通过续写任务与时空 coarse-to-fine 策略生成较长视频，提供稀疏注意力优化。
- Avatar/Avatar-1.5 提供音频驱动角色动画，支持单流或多流音频输入。

## 怎么利用
在独立环境安装官方依赖并下载对应权重，选择基础模型的文生/图生/续写脚本，或 Avatar 的音频驱动流程；输入提示词、图像或音频，检查输出视频后再串接制作流水线。

## 实际例子
**可推导用法 → 场景：** 把产品展示静帧变成动态镜头。**输入：** 产品图像与镜头运动提示。**操作：** 选择 Image-to-Video 推理；需要延长镜头时再试 Video-Continuation。**输出：** 用于后续剪辑的视频片段，外形和时间一致性需逐段核验。

## 适合谁
研究视频生成、数字角色及长视频推理的开发者和内容技术团队。

## 局限 / 注意点
官方环境涉及 Python 3.10、PyTorch 2.6/CUDA 12.4 与 FlashAttention；权重和推理计算成本明显，实际显存、耗时取决于分辨率和并行配置，不能直接假设消费卡可运行或生成实时。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-04 | 18 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fe5095909e994262e6bf167a48b8035f8d07bb3b/archive/repository/2026/2026-10-04/(null).json) |

## 相关日报
- [[Daily/2026/10/2026-10-04|2026-10-04]]

## GitHub 原始链接
https://github.com/meituan-longcat/LongCat-Video

## 官方资料复核（2026-10-13）
- README：https://github.com/meituan-longcat/LongCat-Video/blob/main/README.md
- README blob SHA：`9d6e54ad0c5ad07e66840f23349efca828f5b86f`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。
