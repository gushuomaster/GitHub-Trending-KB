---
type: github-project
repo: "reconurge/flowsint"
url: "https://github.com/reconurge/flowsint"
first_seen: 2026-09-15
last_seen: 2026-09-15
trending_count: 1
category: ["OSINT","Knowledge Graph","Security"]
topics: ["OSINT","Knowledge Graph","Security"]
---
# reconurge/flowsint

## 一句话说明
面向安全分析师的自托管 OSINT 图谱工具，把域名、IP、人物等实体及自动富化结果组织成可视化调查。

## 它能做什么
- 在图上创建和连接调查实体
- 通过 DNS、WHOIS、子域等 enrichers 扩展线索
- 用 Neo4j、PostgreSQL 和本地存储保存调查数据与密钥
- 支持个人本机或团队服务器的 Docker 部署

## 怎么利用
官方流程：运行 `make prod` 或生产 Docker Compose，在 `localhost:5173` 创建账号；从域名节点执行 DNS/WHOIS enrichers，把得到的 IP、ASN 和历史关系加入图谱。

## 实际例子
**官方材料中的工作流：** 官方流程：运行 `make prod` 或生产 Docker Compose，在 `localhost:5173` 创建账号；从域名节点执行 DNS/WHOIS enrichers，把得到的 IP、ASN 和历史关系加入图谱。

## 关键命令
```bash
git clone https://github.com/reconurge/flowsint.git
cd flowsint && make prod
```

## 适合谁
在合法授权范围内进行 OSINT、资产关系分析和调查协作的安全团队。

## 局限 / 注意点
- 项目仍处早期开发，第三方 OSINT 数据可能错误、过期或受额度限制；对公网部署前必须更换认证、vault 和 Neo4j 默认密钥并启用 HTTPS。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-15 | 18 | 未保存 | 未保存 | 日期匹配来源 |

## 相关主题
[[Topics/OSINT|OSINT]] · [[Topics/Knowledge Graph|Knowledge Graph]] · [[Topics/Security|Security]]

## 相关日报
- [[Daily/2026/09/2026-09-15|2026-09-15]]

## GitHub 原始链接
https://github.com/reconurge/flowsint

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/reconurge/flowsint/blob/HEAD/README.md
- 说明：项目卡反映核对日的当前官方资料，不声称这些能力与历史上榜日的项目版本完全相同。
