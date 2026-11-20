---
type: github-project
repo: "jingyaogong/minimind"
url: "https://github.com/jingyaogong/minimind"
first_seen: "2026-11-18"
last_seen: "2026-11-20"
trending_count: 2
language: "Python"
total_stars: 66841
forks: 8781
stars_today: 238
github_rank: 4
fetched_at: "2026-11-20T08:09:53+08:00"
documentation_checked_at: "2026-11-20"
stats_as_of: "2026-11-20"
snapshot_status: "live"
category: ["LLM Training", "Education", "Small Language Model"]
topics: ["LLM", "Training", "PyTorch"]
---
# jingyaogong/minimind

## 一句话说明
MiniMind 用原生 PyTorch 展开一套可复现的小语言模型训练链路，让个人能从分词器、预训练和指令微调一路理解并训练约 64M 参数的模型，而不是只调用高度封装的框架接口。

## 它能做什么
- 从零训练 Tokenizer、Dense 或 MoE 小模型，覆盖预训练与全参数 SFT。
- 提供 LoRA、知识蒸馏、DPO、PPO、GRPO、CISPO 与 Agentic RL 等后训练脚本。
- 支持 Tool Call、自适应思考、CLI、Streamlit WebUI 和兼容 OpenAI 协议的服务端。
- 可把模型接入 Transformers、llama.cpp、vLLM、Ollama、SGLang 或 MNN，并用常见评测集检验效果。

## 怎么利用
先下载 mini 版预训练与 SFT 数据，在单张 NVIDIA 3090 上依次运行 `train_pretrain.py` 和 `train_full_sft.py`；脚本保存阶段权重，再用 `eval_llm.py` 进行对话测试，最终得到一个可继续做 LoRA、偏好优化或工具调用实验的 MiniMind 模型。官方给出的 mini 组合经验值约为预训练 1.21 小时、SFT 1.10 小时，但会随硬件和配置变化。

## 实际例子
**官方快速复现 →** 使用 `pretrain_t2t_mini.jsonl` 与 `sft_t2t_mini.jsonl`，先完成单卡预训练，再运行全量 SFT；随后用 `python eval_llm.py --weight full_sft` 输入问题，输出模型回复。若需要网页交互，可把 Transformers 权重复制到 `scripts/miniMind-3` 后启动 Streamlit WebUI。

## 关键命令
```bash
git clone https://github.com/jingyaogong/minimind.git
cd minimind && pip install -r requirements.txt
cd trainer && python train_pretrain.py
python train_full_sft.py
```

## 适合谁
希望亲手理解 LLM 数据、结构和训练算法的学习者，或需要在低成本环境里验证小模型训练、蒸馏、LoRA 与强化学习流程的研究和工程人员。

## 局限 / 注意点
“2 小时”并非完整训练链路的固定保证：README 将其说明为单张 NVIDIA 3090 上 SFT 一轮的实测量级，mini 组合还包含约 1.21 小时预训练。64M 模型的事实知识和泛化明显有限；Tool Call 数据主要覆盖约 10 个模拟工具，尚不能证明广泛泛化，而且当前同时开启工具调用与显式思考时并不稳定。旧模型也可能因架构更新无法直接加载。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-18 | 14 | 192 | 65940 | 8655 | GitHub Today live snapshot |
| 2026-11-20 | 4 | 238 | 66841 | 8781 | GitHub Today live snapshot |
## 相关主题
[[Topics/LLM|LLM]] · [[Topics/Training|Training]] · [[Topics/PyTorch|PyTorch]]

## 相关日报
- [[Daily/2026/11/2026-11-18|2026-11-18]]

- [[Daily/2026/11/2026-11-20|2026-11-20]]

## GitHub 原始链接
https://github.com/jingyaogong/minimind

## 官方资料复核（2026-11-18）
- README：https://github.com/jingyaogong/minimind/blob/HEAD/README.md
- README blob SHA：`1b11a450c0e50ba81f7072103020c859cb90ac0e`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

## 官方资料复核（2026-11-20）
- README：https://github.com/jingyaogong/minimind/blob/HEAD/README.md
- README blob SHA：`1b11a450c0e50ba81f7072103020c859cb90ac0e`
- 本次按当前官方 README 复核并合并当天榜单事实；保留既有说明、案例、分类、主题、风险与较早历史。
