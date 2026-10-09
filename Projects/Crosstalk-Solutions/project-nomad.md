---
type: github-project
repo: "Crosstalk-Solutions/project-nomad"
url: "https://github.com/Crosstalk-Solutions/project-nomad"
first_seen: 2026-09-15
last_seen: 2026-09-22
trending_count: 2
category: ["Offline","Education","Local AI"]
topics: ["Offline","Education","Local AI"]
---
# Crosstalk-Solutions/project-nomad

## 一句话说明
在自有硬件上部署离线知识与教育服务器，把 Wikipedia、课程、地图、工具和可选本地 AI 放进浏览器入口。

## 它能做什么
- 通过 Kiwix 管理离线 Wikipedia、医学资料和电子书
- 通过 Kolibri 提供课程与进度跟踪
- 下载离线地图，并集成 CyberChef、笔记和文件工具
- 用 Ollama/兼容服务、Qdrant 和文档上传提供本地 RAG

## 怎么利用
官方 Quickstart：在 Debian/Ubuntu 上运行安装脚本，打开 `http://DEVICE_IP:8080`；在向导里选择离线内容包，并按硬件决定是否启用本地 AI。

## 实际例子
**官方材料中的工作流：** 官方 Quickstart：在 Debian/Ubuntu 上运行安装脚本，打开 `http://DEVICE_IP:8080`；在向导里选择离线内容包，并按硬件决定是否启用本地 AI。

## 关键命令
```bash
sudo bash install_nomad.sh
```

## 适合谁
需要在断网环境提供知识、课程、地图和本地 AI 的学校、社区与应急场景。

## 局限 / 注意点
- 核心服务本身较轻，但内容库与本地模型会迅速占满磁盘和内存；首次下载仍需网络，管理员还要维护 Docker、更新和访问控制。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-15 | 17 | 未保存 | 未保存 | 日期匹配来源 |
| 2026-09-22 | 11 | 360 | 未保存 | 仓库快照 |

## 相关主题
[[Topics/Offline|Offline]] · [[Topics/Education|Education]] · [[Topics/Local AI|Local AI]]

## 相关日报
- [[Daily/2026/09/2026-09-15|2026-09-15]]
- [[Daily/2026/09/2026-09-22|2026-09-22]]

## GitHub 原始链接
https://github.com/Crosstalk-Solutions/project-nomad

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/Crosstalk-Solutions/project-nomad/blob/HEAD/README.md
- 说明：项目卡反映核对日的当前官方资料，不声称这些能力与历史上榜日的项目版本完全相同。
