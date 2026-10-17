---
type: github-project
repo: "hmjz100/LinkSwift"
url: "https://github.com/hmjz100/LinkSwift"
first_seen: 2026-10-17
last_seen: '2026-10-17'
trending_count: 1
github_rank: 12
stars_today: 538
total_stars: 23665
forks: 1435
language: "JavaScript"
fetched_at: '2026-10-17T08:08:36+08:00'
documentation_checked_at: '2026-10-17'
stats_as_of: '2026-10-17'
snapshot_status: live
topics: ["Userscript", "Downloads", "Cloud-Storage"]
status: active
---
# hmjz100/LinkSwift

## 一句话说明
一个浏览器用户脚本，在多个主流网盘的网页中增加文件选择、公开接口取链和下载器联动，方便下载自己有权访问的文件。

> 使用方式依据仓库当前 README 核对于 2026-10-17。

## 它能做什么
- 支持百度、阿里、中国移动、天翼、迅雷、光雅、夸克、UC、123 云盘等多个网盘页面
- 在网盘网页中选中文件并获取由服务商公开接口返回的下载地址
- 可把任务推送给 Aria2、IDM、ABDM 等下载器
- 提供网盘页面辅助与界面优化，并同时维护稳定版和测试版脚本

## 怎么利用
在支持用户脚本的浏览器中从官方列出的 GitHub、OpenUserJS 或 ScriptCat 地址安装脚本，登录自己的网盘并选择已获授权的文件。脚本调用对应网盘公开接口取得链接，随后直接交给浏览器或外部下载器，最终得到本地文件。

## 实际例子
**官方能力对应场景：** 场景 → 把自己网盘中的一批资料交给 Aria2 下载。输入 → 已登录账号中选中的授权文件。操作 → 在网盘页面打开 LinkSwift 的下载入口，获取链接并选择推送到 Aria2。输出 → Aria2 接收任务并把文件保存到本机；脚本本身不破解网盘限速。

## 适合谁
经常在多个网盘下载自己文件、希望统一取链和外部下载器操作方式的个人用户。

## 局限 / 注意点
README 明确说明项目使用公开接口、不提供破解限速；只能下载本人拥有或已获授权的内容，并需遵守平台条款和版权规定。网盘接口、Cookie/Token、网页结构或用户脚本权限变化都可能使功能失效；安装脚本前应审查其页面访问权限与更新来源。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-17 | 12 | 538 | 23665 | 1435 | GitHub Today live snapshot |

## 相关主题
[[Topics/Userscript|Userscript]] · [[Topics/Downloads|Downloads]] · [[Topics/Cloud-Storage|Cloud Storage]]

## 相关日报
- [[Daily/2026/10/2026-10-17|2026-10-17]]

## GitHub 原始链接
https://github.com/hmjz100/LinkSwift

## 官方资料复核（2026-10-17）
- README：https://github.com/hmjz100/LinkSwift/blob/main/README.md

