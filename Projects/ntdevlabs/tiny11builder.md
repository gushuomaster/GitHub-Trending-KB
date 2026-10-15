---
type: github-project
repo: ntdevlabs/tiny11builder
url: https://github.com/ntdevlabs/tiny11builder
first_seen: '2026-10-15'
last_seen: '2026-10-15'
trending_count: 1
language: C#
total_stars: 20204
forks: 1553
stars_today: 139
github_rank: 11
fetched_at: '2026-10-15T08:02:04+08:00'
category: [Windows, System-Tools, Image-Customization]
topics: [Windows, System-Tools]
documentation_checked_at: '2026-10-15'
stats_as_of: '2026-10-15'
---

# ntdevlabs/tiny11builder

## 一句话说明
把官方 Windows 11 镜像裁剪成更小、更少预装组件的安装 ISO，并允许按用途选择保守或激进的精简模式。

## 它能做什么
- 用 WinUI 图形界面从官方下载或本地 ISO 构建精简镜像。
- 提供 Tiny11、Core 与 Custom 模式，控制移除组件的激进程度。
- 支持 Turbo 构建与中断后恢复，减少重复等待。
- 生成可用于虚拟机或设备安装的自定义 Windows 11 ISO。

## 怎么利用
从官方来源准备 Windows 11 镜像，以管理员身份运行 `Tiny11Builder.exe`，选择版本、模式与要移除的组件。输入是原始镜像和裁剪选项，应用执行挂载、组件处理与重新打包，输出新的安装 ISO；先在虚拟机验证，再决定是否用于实体机。

## 实际例子
**官方应用工作流 → 场景：** 为低存储测试虚拟机制作轻量 Windows 11。**输入：** 官方 Windows 11 ISO。**操作：** 在应用中选择 Tiny11 模式，保留更新和 Defender 相关能力，生成后先启动虚拟机检查驱动、更新与所需应用。**输出：** 体积更小的可启动 ISO。

## 适合谁
需要为实验室虚拟机、测试设备或受控部署制作精简 Windows 镜像的系统管理员、测试工程师和 Windows 爱好者。

## 局限 / 注意点
需要管理员权限并会修改系统镜像；移除组件可能破坏依赖、更新或恢复功能。Core 模式不能更新或正常 servicing，并会关闭多项保护能力，适合短期测试而非日常主机；Custom 模式删除受保护组件风险更高，必须先在虚拟机验证。

## Trending 历史
- 2026-10-15：#11 · Stars Today：139 · Total Stars：20204 · Forks：1553

## 相关主题
[[Topics/Windows|Windows]] · [[Topics/System-Tools|System-Tools]]

## 相关日报
- [[Daily/2026/10/2026-10-15|2026-10-15]]

## GitHub 原始链接
https://github.com/ntdevlabs/tiny11builder

## 官方资料核对（2026-10-15）
- README：https://github.com/ntdevlabs/tiny11builder/blob/main/README.md

