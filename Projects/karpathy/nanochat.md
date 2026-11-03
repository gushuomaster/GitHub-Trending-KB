---
type: "github-project"
repo: "karpathy/nanochat"
first_seen: "2026-11-03"
last_seen: "2026-11-03"
language: "Python"
total_stars: 59876
forks: 8414
stars_today: 321
github_rank: 14
trending_count: 1
fetched_at: "2026-11-03T08:10:36+08:00"
url: "https://github.com/karpathy/nanochat"
documentation_checked_at: "2026-11-03"
stats_as_of: "2026-11-03"
snapshot_status: "live"
---

# karpathy/nanochat

## 一句话说明
用一套紧凑、可读的训练与评测代码复现从分词、预训练到 SFT、RL 和聊天推理的完整小型 ChatGPT 流程。

## 它能做什么
- 提供 BPE 分词、数据加载、Transformer、AdamW/Muon 优化器和分布式基础训练。
- 包含 base/SFT/RL 训练、CORE 与损失评测、采样、聊天和推理基准脚本。
- 用单个 speedrun 脚本在多 GPU 上训练约百美元级模型，并提供 CPU/MPS 缩小示例。
- 显式管理 bf16/fp16/fp32 精度与 checkpoint，便于研究可复现的规模和性能权衡。

## 怎么利用
安装对应 CPU 或 GPU 依赖，选择 `runs/speedrun.sh`、`runs/runcpu.sh` 或研究脚本；输入训练数据与算力配置，流水线依次训练和评测，输出 checkpoint、指标、样本以及可交互聊天模型。

## 实际例子
**官方 Reproduce and talk to GPT-2 → 场景：** 训练并对话一个 GPT-2 级模型。**输入：** 8×H100 节点和仓库默认训练配置。**操作：** 执行 speedrun，约 1.5 小时后启动 chat CLI。**输出：** 可在终端对话的训练 checkpoint 与评测结果。

```bash
bash runs/speedrun.sh
python -m scripts.chat_cli
```

## 适合谁
希望读懂并亲手跑通语言模型训练全链路的研究者、课程作者和模型工程师。

## 局限 / 注意点
官方主要 speedrun 目标需要昂贵的 8×H100 资源；CPU/MPS 示例会大幅缩小模型，效果有限。仓库是研究与教学代码，不是直接替代成熟生产推理服务；训练数据、成本、数值精度和生成内容仍需独立评估。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-11-03 | 14 | 321 | 59876 | GitHub Today live snapshot |

## 相关主题
- [[Topics/AI]]
- [[Topics/LLM]]

## 相关日报
- [[Daily/2026/11/2026-11-03|2026-11-03]]

## GitHub 原始链接
https://github.com/karpathy/nanochat

## 官方资料复核（2026-11-03）
- README：https://github.com/karpathy/nanochat/blob/master/README.md
- 复核了安装、speedrun、CPU/MPS、精度与仓库结构说明。
