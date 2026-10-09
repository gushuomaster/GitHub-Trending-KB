---
type: github-project
repo: "jiji262/douyin-downloader"
url: "https://github.com/jiji262/douyin-downloader"
first_seen: 2026-09-14
last_seen: 2026-09-14
trending_count: 1
category: ["Downloader","Python","Media"]
topics: ["Downloader","Python","Media"]
---
# jiji262/douyin-downloader

## 一句话说明
提供桌面端与 Python CLI 的抖音媒体归档工具，支持主页批量下载、断点重试和 SQLite 去重。

## 它能做什么
- 下载视频、图集、主页与合集，并保存历史避免重复
- 按日期、数量和质量过滤，提供重试与缺失文件补下载
- 通过 Playwright 登录和浏览器 fallback 处理部分验证
- 桌面端还可接入 TikTok、YouTube、Telegram 与 X

## 怎么利用
官方 CLI 示例：安装依赖与 Chromium，复制 `config.example.yml`，运行 cookie 获取器登录；把创作者主页写入配置后执行 `python run.py -c config.yml`，输出媒体文件和下载历史。

## 实际例子
**资料中的工作流：** 官方 CLI 示例：安装依赖与 Chromium，复制 `config.example.yml`，运行 cookie 获取器登录；把创作者主页写入配置后执行 `python run.py -c config.yml`，输出媒体文件和下载历史。

## 关键命令
```bash
python -m pip install -r requirements.txt
python run.py -c config.yml
```

## 适合谁
在取得授权后做创作者内容归档、媒体研究或自有素材备份的用户。

## 局限 / 注意点
- README 明确当前请求验证会阻止多类 CLI 下载，浏览器 fallback 也不保证成功；Cookie 属敏感凭据，下载与去水印必须遵守平台条款和内容版权。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-14 | 17 | 未保存 | 未保存 | 日期匹配来源 |

## 相关主题
[[Topics/Downloader|Downloader]] · [[Topics/Python|Python]] · [[Topics/Media|Media]]

## 相关日报
- [[Daily/2026/09/2026-09-14|2026-09-14]]

## GitHub 原始链接
https://github.com/jiji262/douyin-downloader

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/jiji262/douyin-downloader/blob/HEAD/README.md
- 说明：项目卡反映核对日可得资料，不声称这些能力与历史上榜日的项目版本完全相同。
