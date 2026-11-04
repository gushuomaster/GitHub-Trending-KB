---
type: "github-project"
repo: "FlashML-org/FreeToken"
url: "https://github.com/FlashML-org/FreeToken"
first_seen: "2026-11-02"
last_seen: "2026-11-03"
trending_count: 2
github_rank: 6
stars_today: 653
total_stars: 16043
forks: 1582
language: "Python"
fetched_at: "2026-11-03T08:10:36+08:00"
documentation_checked_at: "2026-11-03"
stats_as_of: "2026-11-03"
snapshot_status: "live"
category: ["Model Serving","Edge AI"]
topics: ["MoE","Inference","Local AI","GPU"]
status: active
---
# FlashML-org/FreeToken

## 一句话说明
在消费级电脑上运行超大 MoE 开放权重模型的推理引擎，把 GPU、CPU、内存和互连统一用于专家加载、缓存与生成。

## 它能做什么
- 以 CPU–GPU 协同、双缓冲预填充和专家缓存提高 MoE 推理效率。
- 动态在专家缓存与 KV 内存之间重新分配显存。
- 提供 OpenAI/Anthropic 兼容 API，接入 Coding Agent 和工具调用。

## 怎么利用
在支持的 NVIDIA RTX 机器安装 `uv pip install "freetoken[accel]"`，下载兼容量化模型并启动服务；再把 Agent 的兼容 API 地址指向本机，输出本地生成和工具调用结果。

## 实际例子
**场景 →** 在支持的 NVIDIA RTX 机器安装 `uv pip install "freetoken[accel]"`，下载兼容量化模型并启动服务；再把 Agent 的兼容 API 地址指向本机，输出本地生成和工具调用结果。

**输入 →** 兼容量化模型权重、RTX GPU/主机内存和 Agent 的兼容 API 配置。

**操作 →** 安装加速包，在 FreeToken 中加载模型并启动 OpenAI/Anthropic 兼容服务，再把 Agent 的基础 URL 指向本机端点。

**输出 →** 在本机完成的文本生成和工具调用响应，以及可观察的显存/缓存配置。

## 关键命令
```bash
uv pip install "freetoken[accel]"
```

## 适合谁
要在消费级 NVIDIA 设备上部署大规模 MoE 模型和本地 Agent API 的推理工程师。

## 局限 / 注意点
主要支持 Windows/Linux 与 NVIDIA RTX 30/40/50；290B 级权重仍需大量内存、磁盘与调优，性能取决于量化、带宽和模型兼容性。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-02 | 16 | 242 | 15384 | 1549 | GitHub Today live snapshot |
| 2026-11-03 | 6 | 653 | 16043 | 1582 | GitHub Today live snapshot |

## 最近变化
- 2026-11-02：首次建立项目卡并按官方 README 核对主要能力、用法与限制。

## 相关主题
"[[Topics/MoE|MoE]]" · "[[Topics/Inference|Inference]]" · "[[Topics/Local-AI|Local AI]]" · "[[Topics/GPU|GPU]]"

## 相关日报
- [[Daily/2026/11/2026-11-02|2026-11-02]]
- [[Daily/2026/11/2026-11-03|2026-11-03]]

## GitHub 原始链接
https://github.com/FlashML-org/FreeToken

## 官方资料复核（2026-11-02）
- README：https://github.com/FlashML-org/FreeToken/blob/main/README.md
- README blob SHA：`e72a5cd0d62ecb564e1b7f8ac9b194c8fd9d8a84`
- 榜单数据来自同一次 GitHub Trending Any / Any / Today 页面采集；主要语言未展示时明确记为“未声明”。

## 官方资料复核（2026-11-03）
- README：https://github.com/FlashML-org/FreeToken/blob/HEAD/README.md
- 本次按当前官方 README 复核；仅增补当天榜单事实和复核记录，原有能力说明、案例、分类、标签、风险说明与历史均保留。
