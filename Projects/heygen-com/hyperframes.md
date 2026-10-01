---
repo: "heygen-com/hyperframes"
url: "https://github.com/heygen-com/hyperframes"
first_seen: 2026-09-09
last_seen: 2026-10-01
trending_count: 2
github_rank: 10
stars_today: 349
total_stars: 54712
forks: 4973
language: TypeScript
fetched_at: "2026-10-01T07:59:50+08:00"
category: ["AI", "Video", "Developer Tools"]
tags: ["html-video", "agent", "ffmpeg", "animation", "skills"]
topics: ["AI", "Agent", "Video-AI", "Skills"]
status: active
---
# heygen-com/hyperframes

## 一句话说明
让人和 Coding Agent 用普通 HTML、CSS 与可定位动画制作视频，并确定性地渲染为 MP4。

## 它能做什么
- 用无需构建步骤的 HTML composition 描述画面。
- 兼容 CSS、GSAP、Lottie、Three.js 等动画运行时并逐帧定位。
- 提供 Agent Skills、CLI、浏览器预览、lint 和本地/AWS Lambda 渲染。
- 适合产品发布、代码 walkthrough、数据动画、社交短片和文档转视频。

## 怎么利用
安装核心 Skills，让 Agent 根据品牌素材和脚本创建 composition；先在浏览器预览并 lint，再用 CLI 逐帧渲染，通过 FFmpeg 输出 MP4，可把同一模板接进 CI 批量生成。

## 实际例子
**官方示例 →** 制作 10 秒产品介绍片。 **输入 →** 标题、背景视频、品牌样式和背景音乐。 **操作 →** 使用 `/hyperframes` 规划场景、编写 HTML 和可 seek 动画，预览后渲染。 **输出 →** 画面可复现、适合自动化流水线的 MP4。

    npx hyperframes init my-video
    npx hyperframes preview
    npx hyperframes render

## 适合谁
需要 Agent 自动制作版式稳定的营销视频、UI 演示或数据动画的开发者和内容团队。

## 局限 / 注意点
它更适合程序化排版与动画，不等于写实视频生成模型；浏览器字体、媒体编解码器和第三方动画库仍会影响渲染一致性，复杂作品需要前端与动画基础。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-09 | 未保存 | +2627 | 未保存 |
| 2026-10-01 | 10 | +349 | 54712 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Agent|Agent]] · [[Topics/Video-AI|Video-AI]] · [[Topics/Skills|Skills]]

## 相关日报
- [[Daily/2026/09/2026-09-09|2026-09-09]]
- [[Daily/2026/10/2026-10-01|2026-10-01]]

