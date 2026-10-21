---
type: github-project
repo: "shiyu-coder/Kronos"
url: "https://github.com/shiyu-coder/Kronos"
first_seen: "2026-10-20"
last_seen: "2026-10-21"
trending_count: 2
github_rank: 12
stars_today: 733
total_stars: 42343
forks: 7011
language: "Python"
fetched_at: "2026-10-21T08:02:49+08:00"
documentation_checked_at: "2026-10-21"
stats_as_of: "2026-10-21"
snapshot_status: live
topics: ["Quantitative Finance", "Time Series", "Foundation Model", "Forecasting"]
status: active
---
# shiyu-coder/Kronos

## 一句话说明
把 OHLCV K 线序列离散为分层 token，并用金融市场预训练模型生成未来 K 线预测，支持研究、微调和批量推理。

> 使用方式依据仓库当前 README 核对于 2026-10-21。

## 它能做什么
- 提供针对 K 线训练的 tokenizer 与多尺寸预测模型
- 从历史 OHLCV、历史时间戳和未来时间戳生成预测 DataFrame
- 支持多资产批量预测和概率采样
- 提供基于 Qlib 的 A 股微调与简化回测示例

## 怎么利用
官方预测示例：读取 5 分钟 K 线 CSV，取 400 根历史 OHLCV，设置未来 120 个时间戳，用 `KronosPredictor.predict` 生成未来 open/high/low/close/volume/amount，并画出预测与真实值对比图。

## 实际例子
**官方示例 →** 预测一段 5 分钟 K 线。**输入 →** 包含 OHLCV 的 CSV、400 根历史窗口和未来 120 个时间戳。**操作 →** 加载 Hugging Face tokenizer 与 Kronos-small，调用 `predict`。**输出 →** 以未来时间戳为索引的 K 线预测 DataFrame 和预测/真实值对比图。

## 关键命令
```bash
pip install -r requirements.txt
python examples/prediction_example.py
```

## 适合谁
研究金融时间序列预测、需要开放 K 线预训练模型或希望在自有市场数据上微调验证的量化研究人员。

## 局限 / 注意点
Kronos-small/base 最大上下文为 512，超长输入会截断；Kronos-large 未开放。官方明确微调回测只是演示，不是生产量化系统，真实策略还需处理数据泄漏、成本、滑点、风险中性化和不确定性。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-20 | 12 | 363 | 41640 | 6922 | GitHub Today live snapshot |
| 2026-10-21 | 12 | 733 | 42343 | 7011 | GitHub Today live snapshot |

## 相关主题
[[Topics/Quantitative Finance|Quantitative Finance]] · [[Topics/Time Series|Time Series]] · [[Topics/Foundation Model|Foundation Model]] · [[Topics/Forecasting|Forecasting]]

## 相关日报
- [[Daily/2026/10/2026-10-20|2026-10-20]]
- [[Daily/2026/10/2026-10-21|2026-10-21]]

## GitHub 原始链接
https://github.com/shiyu-coder/Kronos

## 官方资料复核（2026-10-21）
- README：https://github.com/shiyu-coder/Kronos/blob/master/README.md
- README blob SHA：`faffa1578cf0172f6b88f5db8a9b1205668ffef1`


