---
type: github-project
repo: "ashhart/TensorFold"
url: "https://github.com/ashhart/TensorFold"
first_seen: "2026-11-13"
last_seen: "2026-11-13"
trending_count: 1
language: "Zig"
total_stars: 1931
forks: 391
stars_today: 54
github_rank: 7
fetched_at: "2026-11-13T08:07:57+08:00"
documentation_checked_at: "2026-11-13"
stats_as_of: "2026-11-13"
snapshot_status: "live"
category: ["LLM Inference","Zig","GPU"]
topics: ["LLM-Inference","Metal","CUDA"]
---
# ashhart/TensorFold

## 一句话说明
TensorFold 是用 Zig 编写的本地大模型推理引擎，直接读取模型检查点并在 Apple Metal 或 NVIDIA CUDA 上执行，无需安装 Python 或 MLX。

## 它能做什么
- 直接读取模型检查点，在 Metal 或 CUDA 内核上完成分词和推理。
- 提供 OpenAI 与 Anthropic 兼容 API，可按硬件容量并发处理和排队请求。
- 支持模型拉取/发现、上下文压缩、精确解码、本地 Web 界面，以及总连接数和来源地址级接入限制。
- 无需 Python 或 MLX，发行版可直接运行本地目录或 Hugging Face 缓存。

## 怎么利用
选择与硬件匹配的发行版，拉取固定 revision 的模型并运行 `tensorfold serve`。输入模型、上下文和并发参数，服务根据内存容量启动兼容 API，输出本地推理响应与容量状态。

## 实际例子
**官方 Apple Silicon 场景 →** Homebrew 安装后拉取 Qwen3.5-2B 4-bit 模型，启动名为 `local-model` 的服务，再向 `/v1/chat/completions` 发送请求，得到本机生成的一句回复。

## 关键命令
```bash
brew install ashhart/tensorfold/tensorfold
tensorfold pull mlx-community/Qwen3.5-2B-MLX-4bit@93760be4f1f69842a46bc13dbdc0f19e291392a3
tensorfold serve mlx-community/Qwen3.5-2B-MLX-4bit --name local-model --context 8192 --no-thinking
```

## 适合谁
希望在 Apple Silicon 或 NVIDIA GPU 上部署本地兼容 API，并愿意按硬件容量调优模型、上下文与并发的推理工程师。

## 局限 / 注意点
macOS 路径要求 Apple Silicon；Linux CUDA 发行版要求 glibc 2.28+、NVIDIA R580+ 驱动与 CUDA 13 运行条件。服务默认最多 128 个开放连接，按来源地址的份额限制在连接量达到四分之三后生效；反向代理或 Docker 网关需显式配置 trusted-proxy。模型权重许可、显存/内存仍决定上下文与并发，Living Weights 等能力仍属实验性。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-13 | 7 | 54 | 1931 | 391 | GitHub Today live snapshot |

## 相关主题
[[Topics/LLM-Inference|LLM-Inference]] · [[Topics/Metal|Metal]] · [[Topics/CUDA|CUDA]]

## 相关日报
- [[Daily/2026/11/2026-11-13|2026-11-13]]

## GitHub 原始链接
https://github.com/ashhart/TensorFold

## 官方资料复核（2026-11-13）
- README：https://github.com/ashhart/TensorFold/blob/HEAD/README.md
- README blob SHA：`8075402b929ab2861307f6d809a35c5126eeb9b8`
- 早晨快照后官方 README 新增 `--max-connections`、`--max-connections-per-address` 与 `--trusted-proxy` 的接入限制说明；榜单统计仍保留 08:07:57 的同次 GitHub Trending 快照。
