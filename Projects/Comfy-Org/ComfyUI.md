---
type: github-project
repo: "Comfy-Org/ComfyUI"
url: "https://github.com/Comfy-Org/ComfyUI"
first_seen: '2026-10-19'
last_seen: '2026-10-19'
trending_count: 1
github_rank: 13
stars_today: 154
total_stars: 138590
forks: 16503
language: "Python"
fetched_at: '2026-10-19T08:04:27+08:00'
documentation_checked_at: '2026-10-19'
stats_as_of: '2026-10-19'
snapshot_status: live
topics: ["Generative AI", "Image", "Video", "Workflow"]
status: active
---
# Comfy-Org/ComfyUI

## 一句话说明
用可视化节点图搭建、复用和自动化本地生成式 AI 工作流，覆盖图片、视频、音频、3D 与文本任务。

## 它能做什么
- 用节点图精确组合模型、提示词、ControlNet、LoRA、采样与后处理
- 保存工作流为 JSON，或从生成媒体恢复工作流与随机种子
- 通过队列、局部重执行、模型卸载和权重流式传输优化显存
- 提供模板、App Mode、API 和自定义节点扩展生产流程

## 怎么利用
官方基础工作流：安装 ComfyUI 后打开一个 text-to-image 模板，放入兼容 checkpoint，填写正负提示词并加入队列。输入 → 模型、提示词和尺寸/采样参数；处理 → 节点图依次编码、采样、解码并保存；输出 → 图片以及可再次加载的完整工作流。

## 实际例子
**场景 → 输入 → 操作 → 输出：** 官方基础工作流：安装 ComfyUI 后打开一个 text-to-image 模板，放入兼容 checkpoint，填写正负提示词并加入队列。输入 → 模型、提示词和尺寸/采样参数；处理 → 节点图依次编码、采样、解码并保存；输出 → 图片以及可再次加载的完整工作流。

## 关键命令
```bash
pip install comfy-cli
comfy install
```

## 适合谁
需要精确控制本地生成式媒体流程、复用节点图或把工作流接入 API 的视觉创作者与 AI 工程师。

## 局限 / 注意点
模型和自定义节点来自不同来源，需分别审查许可、代码与权重安全；复杂工作流仍受显存、内存和执行时间限制。Partner/API 节点可能调用远程付费服务，离线使用应启用相应禁用选项。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-19 | 13 | 154 | 138590 | 16503 | GitHub Today live snapshot |

## 相关主题
[[Topics/Generative AI|Generative AI]] · [[Topics/Image|Image]] · [[Topics/Video|Video]] · [[Topics/Workflow|Workflow]]

## 相关日报
- [[Daily/2026/10/2026-10-19|2026-10-19]]

## GitHub 原始链接
https://github.com/Comfy-Org/ComfyUI

## 官方资料复核（2026-10-19）
- README：https://github.com/Comfy-Org/ComfyUI/blob/master/README.md
- README blob SHA：`a6b57ecfe996f8adaf42436afbe753f6f8a5f62c`

