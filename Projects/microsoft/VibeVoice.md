---
type: github-project
repo: "microsoft/VibeVoice"
url: "https://github.com/microsoft/VibeVoice"
first_seen: "2026-11-06"
last_seen: "2026-11-06"
trending_count: 1
language: "Python"
total_stars: 55895
forks: 6286
stars_today: 223
github_rank: 13
fetched_at: "2026-11-06T08:10:55+08:00"
documentation_checked_at: "2026-11-06"
stats_as_of: "2026-11-06"
snapshot_status: "live"
category: ["AI", "Speech", "Audio"]
tags: ["speech-recognition", "text-to-speech", "speaker-diarization", "streaming"]
topics: ["ASR", "TTS", "Speaker-Diarization"]
---
# microsoft/VibeVoice

## 一句话说明
提供长音频语音识别、实时识别与研究型文本转语音模型，处理“谁在何时说了什么”以及长对话合成。

## 它能做什么
- ASR 可单次处理最长 60 分钟音频并联合输出说话人、时间戳和文本。
- 提供流式 ASR、定制热词、微调和 vLLM 推理路径。
- 提供 0.5B 实时 TTS 与最长约 90 分钟、最多 4 说话人的长文本语音研究模型。

## 怎么利用
**官方入口 →** 将会议录音交给 VibeVoice-ASR 或官方 Playground，设置领域热词并运行推理；输出带说话人和时间戳的结构化转写。实时字幕可改用 streaming 变体逐块返回结果。

## 实际例子
**官方入口 →** 将会议录音交给 VibeVoice-ASR 或官方 Playground，设置领域热词并运行推理；输出带说话人和时间戳的结构化转写。实时字幕可改用 streaming 变体逐块返回结果。

## 关键命令
```bash
pip install -e .
python demo/vibevoice_asr_inference_from_file.py \
  --model_path microsoft/VibeVoice-ASR --audio_files meeting.wav
```

## 适合谁
研究语音识别、说话人转写、实时字幕或长文本语音的语音工程师和研究人员。

## 局限 / 注意点
ASR 官方安装建议使用 NVIDIA PyTorch 容器并下载 7B 模型，对 GPU、显存和存储有实际要求。README 明确其为研究开发用途，输出可能偏置或不准确；仓库已因滥用风险移除原 TTS 代码，模型入口并不等于完整可部署服务。高质量合成语音存在冒充和虚假信息风险，发布时应披露 AI，并在商业或真实场景前做额外测试与合规评估。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-06 | 13 | 223 | 55895 | 6286 | GitHub Today live snapshot |

## 相关主题
- [[Topics/ASR|ASR]]
- [[Topics/TTS|TTS]]
- [[Topics/Speaker-Diarization|Speaker Diarization]]

## 相关日报
- [[Daily/2026/11/2026-11-06|2026-11-06]]

## GitHub 原始链接
https://github.com/microsoft/VibeVoice

## 官方资料复核（2026-11-06）
- README：https://github.com/microsoft/VibeVoice/blob/HEAD/README.md
- README blob SHA：`57496590b0380d521cdddeff613d776466a86381`
- 榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
