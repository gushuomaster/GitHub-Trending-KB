---
type: "github-project"
repo: "p-e-w/heretic"
first_seen: "2026-11-03"
last_seen: "2026-11-03"
language: "Python"
total_stars: 38090
forks: 4323
stars_today: 420
github_rank: 15
trending_count: 1
fetched_at: "2026-11-03T08:10:36+08:00"
url: "https://github.com/p-e-w/heretic"
documentation_checked_at: "2026-11-03"
stats_as_of: "2026-11-03"
snapshot_status: "live"
---

# p-e-w/heretic

## 一句话说明
无需重新训练整个模型，通过可配置评分器和权重消融修改本地语言模型的拒答、谄媚或特定文本倾向。

## 它能做什么
- 用 ARA 或 directional ablation 修改可在本机运行的模型权重。
- 通过 Optuna/TPE 搜索 modifier 参数，按一个或多个可配置分数共同优化。
- 内置拒答率、KL 散度等 scorer，并允许用 Python 类或文件路径加载自定义 scorer。
- 处理完成后可保存、上传 Hugging Face、聊天测试或运行标准基准。

## 怎么利用
准备 Python 3.10+、PyTorch 2.6+ 和目标模型，运行 Heretic 并选择配置；工具先基准测试硬件决定 batch size，再优化权重修改参数，输出可保存和评测的修改后模型。

## 实际例子
**官方 Usage → 场景：** 对 Qwen3-4B-Instruct-2507 执行默认拒答抑制。**输入：** Hugging Face 模型 ID。**操作：** 安装 `heretic-llm` 后运行 CLI，等待自动硬件基准和优化；完成后选择保存与聊天测试。**输出：** 修改后的本地模型和可复核的测试/基准结果。

```bash
pip install -U heretic-llm
heretic Qwen/Qwen3-4B-Instruct-2507
```

## 适合谁
研究模型行为修改、拒答机制、偏好与权重空间的 LLM 安全/可控性研究人员。

## 局限 / 注意点
默认会抑制拒答，这可能同时削弱安全边界；修改后的模型应只在明确授权、隔离且有评测的环境使用。需要能在本地加载目标模型的显存/内存，4B 示例在 RTX 3090 也约需 30–40 分钟；1.x 配置与 2.x 不兼容，上传模型还涉及许可证和分发责任。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-11-03 | 15 | 420 | 38090 | GitHub Today live snapshot |

## 相关主题
- [[Topics/AI]]
- [[Topics/LLM-Safety]]

## 相关日报
- [[Daily/2026/11/2026-11-03|2026-11-03]]

## GitHub 原始链接
https://github.com/p-e-w/heretic

## 官方资料复核（2026-11-03）
- README：https://github.com/p-e-w/heretic/blob/master/README.md
- 复核了安装、默认行为、scorer、modifier、硬件基准与输出选项。
