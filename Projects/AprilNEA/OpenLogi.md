---
repo: "AprilNEA/OpenLogi"
first_seen: 2026-09-15
last_seen: 2026-09-15
recommend_score: 9.0
trending_count: 1
stars_today: 1009
category: ["Developer Tools", "Desktop", "Automation"]
tags: ["github/rust", "github/local-first", "github/linux", "github/hardware", "github/automation"]
---
# AprilNEA/OpenLogi

## 项目定位
Logitech Options+ 的 local-first Rust 替代品，覆盖 Linux/macOS/Windows 外设配置。

## 核心功能 / 实现特点
Rust + GPUI + HID++/UVC；支持按键/手势、DPI、SmartShift、应用 profile、键盘/摄像头、TOML 与 CLI。

## 主要优点
- Linux 一等支持；无账号、无遥测。
- 配置可版本控制，CLI 适合自动化。

## 局限 / 注意点
- 硬件型号兼容矩阵维护成本高。
- 与官方 Options+ 同时运行可能产生 HID 冲突。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-15 | +1009 | 9.0 |

## 相关主题
[[Developer-Tools]]

## 相关日报
- [[2026-09-15]]

## 怎么利用
把 OpenLogi 作为本机外设配置层，识别 Logitech 鼠标/键盘后设置按键、滚轮或设备参数，并在 Linux、macOS、Windows 上本地保存配置。

## 实际例子
**可推导用法：** 场景 → 在 Linux 上配置 MX Master。输入 → 已连接鼠标和期望的侧键动作。操作 → 在 OpenLogi 中识别设备并绑定“后退/前进”和滚轮参数。输出 → 无需 Options+ 云端账户的本地外设配置。
