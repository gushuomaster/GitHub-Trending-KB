---
type: github-project
repo: "ruvnet/RuView"
url: "https://github.com/ruvnet/RuView"
first_seen: 2026-09-15
last_seen: 2026-09-15
trending_count: 1
category: ["WiFi Sensing","IoT","Privacy"]
topics: ["WiFi Sensing","IoT","Privacy"]
---
# ruvnet/RuView

## 一句话说明
利用低成本 WiFi CSI、雷达等射频信号做无摄像头的存在、活动、呼吸和心率感知。

## 它能做什么
- 从 ESP32 等节点采集 CSI 并检测占用、活动和房间变化
- 估计呼吸、心率、睡眠状态和部分人体姿态
- 接入 Home Assistant、Matter、Apple Home、Google Home 与 Alexa
- 提供采集、训练、模型加载、证据记录和 Agent/MCP 工具

## 怎么利用
官方示例：部署 ESP32 CSI 节点，运行 `npx @ruvnet/ruview doctor` 和 `esp32 --seconds 45 --analyze`，校准后把房间存在与生命体征实体发布到 Home Assistant。

## 实际例子
**官方材料中的工作流：** 官方示例：部署 ESP32 CSI 节点，运行 `npx @ruvnet/ruview doctor` 和 `esp32 --seconds 45 --analyze`，校准后把房间存在与生命体征实体发布到 Home Assistant。

## 适合谁
研究无摄像头存在感知、智能家居或射频信号处理的团队。

## 局限 / 注意点
- README 明确部分世界模型准确率仍为合成结果，生命体征和跌倒判断不能替代医疗设备；射频感知涉及隐私、环境校准和硬件差异。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-15 | 12 | 未保存 | 未保存 | 日期匹配来源 |

## 相关主题
[[Topics/WiFi Sensing|WiFi Sensing]] · [[Topics/IoT|IoT]] · [[Topics/Privacy|Privacy]]

## 相关日报
- [[Daily/2026/09/2026-09-15|2026-09-15]]

## GitHub 原始链接
https://github.com/ruvnet/RuView

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/ruvnet/RuView/blob/HEAD/README.md
- 说明：项目卡反映核对日的当前官方资料，不声称这些能力与历史上榜日的项目版本完全相同。
