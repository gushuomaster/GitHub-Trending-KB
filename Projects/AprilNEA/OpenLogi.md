---
type: github-project
repo: "AprilNEA/OpenLogi"
url: "https://github.com/AprilNEA/OpenLogi"
first_seen:
last_seen:
recommend_score: 9.0
trending_count: 0
stars_today:
category: ["Developer Tools", "Desktop", "Automation"]
tags: ["github/rust", "github/local-first", "github/linux", "github/hardware", "github/automation"]
topics: ["Developer-Tools", "Desktop", "Automation"]
documentation_checked_at: "2026-10-15"
history_status: no_confirmed_trending_snapshot
---
# AprilNEA/OpenLogi

## 一句话说明
OpenLogi 是用 Rust 编写的本地优先 Logitech Options+ 替代工具，让 Linux、macOS 和 Windows 用户无需云端账户即可配置兼容的鼠标、键盘、摄像头与灯光设备。

## 它能做什么
- 通过 Logi Bolt、Unifying、蓝牙或有线连接识别兼容设备，并显示电量与充电状态。
- 重映射按键、短按/长按与组合动作，配置 DPI、SmartShift、滚轮和手势。
- 按当前应用自动切换配置 profile，并把配置保存在可版本控制的 TOML 文件中。
- 调整 Logitech UVC 摄像头和 Litra 灯的画面、亮度与色温等硬件参数。

## 怎么利用
从官方 Release 安装与平台匹配的版本，连接设备后先确认型号和功能是否在支持范围内；再通过图形界面或 CLI 设置按键、滚轮、DPI、灯光或摄像头参数。配置写入本地 TOML，可备份、审查并在多台受控设备间复用。

## 实际例子
**官方能力对应场景 →** 在 Linux 工作站连接 MX Master 鼠标，把侧键设为前进/后退，为设计软件建立单独 profile，并调整 DPI 与 SmartShift。输入是已连接设备和动作配置，OpenLogi 经 HID++ 写入设备设置并在应用切换时加载 profile，输出是无需 Options+ 账户的本地配置。

## 适合谁
需要在 Linux 上配置 Logitech 外设、希望把设备设置纳入本地配置管理，或不愿使用 Options+ 云端账户的开发者与桌面运维人员。

## 局限 / 注意点
- 官方 README 明确项目仍在积极开发、尚未稳定，功能和配置格式可能变化。
- 不同平台和设备暴露的 HID++/UVC 能力不同；应用 profile 在 Linux 仅支持 X11/XWayland。
- 与官方 Options+ 同时运行可能争用 HID 设备；修改按键与摄像头参数前应保留可恢复配置。
- 代码采用 MIT/Apache-2.0 双许可证，但品牌资源另有授权限制，项目也不隶属于 Logitech。

## Trending 历史
当前没有由有效 Daily 与 `Index/projects.jsonl` 共同确认的上榜日期。旧卡中的 2026-09-15 条目来自已撤销日报，不能作为可信 Trending 快照。

## 相关主题
[[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Desktop|Desktop]] · [[Topics/Automation|Automation]]

## 相关日报
暂无已确认的相关日报。

## GitHub 原始链接
https://github.com/AprilNEA/OpenLogi

## 官方资料复核（2026-10-15）
- README：https://github.com/AprilNEA/OpenLogi/blob/master/README.md
- README blob SHA：`1e2d79b5cb659b3291f760935298fde1554df5fd`

