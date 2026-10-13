---
type: github-project
repo: "lyogavin/airllm"
url: "https://github.com/lyogavin/airllm"
first_seen: "2026-10-12"
last_seen: "2026-10-13"
trending_count: 2
language: "Jupyter Notebook"
total_stars: 37505
forks: 3870
stars_today: 879
github_rank: 7
fetched_at: "2026-10-13T08:05:00+08:00"
category: ["AI", "Inference"]
tags: ["github/ai", "github/llm", "github/inference"]
---
# lyogavin/airllm

## 一句话说明
通过逐层把模型权重在磁盘、内存和 GPU 间流送，让显存很小的单卡也能运行远大于显存容量的开源大模型。

**官方描述：** AirLLM 70B inference with single 4GB GPU

## 它能做什么
- 同一时刻只把一个 Transformer 层放进 GPU，使峰值显存取决于单层而非整个模型。
- 通过 AutoModel 接入 Hugging Face ID 或本地模型路径，覆盖多种 Llama、Qwen、DeepSeek、Mistral 等模型。
- 支持 4-bit/8-bit 权重压缩、预取、CPU 推理和 Apple Silicon。
- 提供示例 Notebook，并支持部分超大模型的低显存 LoRA 训练。

## 怎么利用
先安装 airllm，输入 Hugging Face 模型 ID 或本地模型路径；AirLLM 首次运行时把权重拆成逐层分片并保存到缓存，生成时逐层装入 GPU 计算，最后返回与常规 Transformers 类似的 token 序列与解码文本。

## 实际例子
**官方 Quickstart → 场景：** 在小显存 GPU 上测试 Qwen3-32B 文本生成。**输入：** 模型 ID “Qwen/Qwen3-32B”和问题文本。**操作：** 用 AutoModel.from_pretrained 加载，再调用 tokenizer 与 generate。**输出：** 解码后的模型回答；分层权重会保存在本地供后续复用。

~~~python
from airllm import AutoModel
model = AutoModel.from_pretrained("Qwen/Qwen3-32B")
~~~

## 适合谁
只有单张消费级 GPU、需要离线验证超大开源模型功能，且可以接受低吞吐和较大磁盘占用的研究者与工程师。

## 局限 / 注意点
节省显存不等于节省磁盘、系统内存或推理时间；首次模型拆分需要大量存储，逐层 I/O 会显著降低吞吐。不同模型还可能依赖特定 transformers、CUDA、flash-attn 或 remote code 版本，受限模型需 Hugging Face token。

## Trending 历史
- 2026-10-12：#7 · Stars Today：548 · Total Stars：36464 · Forks：3818

- 2026-10-13：#7 · Stars Today：879 · Total Stars：37505 · Forks：3870

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/10/2026-10-12|2026-10-12]]

- [[Daily/2026/10/2026-10-13|2026-10-13]]

## GitHub 原始链接
https://github.com/lyogavin/airllm

## 官方资料核对
- 核对日期：2026-10-13
- README：https://github.com/lyogavin/airllm/blob/main/README.md


