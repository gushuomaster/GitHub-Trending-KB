---
type: github-project
repo: "OpenBMB/VoxCPM"
url: "https://github.com/OpenBMB/VoxCPM"
first_seen: 2026-09-15
last_seen: 2026-09-15
trending_count: 1
category: ["TTS","Voice Cloning","Audio"]
topics: ["TTS","Voice Cloning","Audio"]
---
# OpenBMB/VoxCPM

## 一句话说明
不经离散语音 tokenizer 的多语言 TTS 模型，可做声音设计、可控克隆与 48kHz 流式语音生成。

## 它能做什么
- 直接生成连续语音表示，支持 30 种语言和多种中文方言
- 用自然语言描述性别、年龄、情绪和语速来设计新声音
- 从短参考音频克隆音色，并用风格提示控制表达
- 支持实时流式、Python API、Web Demo 与 OpenAI 兼容服务

## 怎么利用
官方流程：安装 `voxcpm`，加载 VoxCPM2，输入文本直接合成；若要克隆声音，再提供有授权的参考音频及可选转录/风格说明，保存为 48kHz 音频。

## 实际例子
**官方材料中的工作流：** 官方流程：安装 `voxcpm`，加载 VoxCPM2，输入文本直接合成；若要克隆声音，再提供有授权的参考音频及可选转录/风格说明，保存为 48kHz 音频。

## 关键命令
```bash
pip install voxcpm
```

## 适合谁
开发多语言配音、语音助手或授权声音克隆应用的音频团队。

## 局限 / 注意点
- 2B 模型和实时推理需要 CUDA 12、较新 PyTorch 与足够显存；声音克隆必须取得本人同意，并防范冒用、欺诈和未经授权的音色传播。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-15 | 14 | 未保存 | 未保存 | 日期匹配来源 |

## 相关主题
[[Topics/TTS|TTS]] · [[Topics/Voice Cloning|Voice Cloning]] · [[Topics/Audio|Audio]]

## 相关日报
- [[Daily/2026/09/2026-09-15|2026-09-15]]

## GitHub 原始链接
https://github.com/OpenBMB/VoxCPM

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/OpenBMB/VoxCPM/blob/HEAD/README.md
- 说明：项目卡反映核对日的当前官方资料，不声称这些能力与历史上榜日的项目版本完全相同。
