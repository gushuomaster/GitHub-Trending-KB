---
repo: "NawfalMotii79/PLFM_RADAR"
url: "https://github.com/NawfalMotii79/PLFM_RADAR"
first_seen: 2026-09-29
last_seen: 2026-09-29
trending_count: 1
github_rank: 4
stars_today: 158
total_stars: 25751
forks: 5885
language: PLSQL
fetched_at: "2026-09-29T08:05:00+08:00"
category: ["Hardware", "Radar", "Signal Processing"]
tags: ["phased-array", "radar", "fpga", "stm32", "rf"]
topics: ["Hardware", "Signal-Processing"]
status: active
---
# NawfalMotii79/PLFM_RADAR

## 一句话说明
提供一套可制造、可修改的 10.5 GHz 脉冲线性调频相控阵雷达硬件、固件和可视化软件，供研究者搭建 3 km 或 20 km 级实验平台。

## 它能做什么
- 用电子相控阵在方位和俯仰方向进行 ±45° 波束控制，并配合步进电机完成 360° 扫描。
- 在 FPGA 上完成啁啾生成、脉冲压缩、Doppler FFT、MTI 与 CFAR 检测。
- 通过 STM32 管理电源时序、射频器件、GPS/IMU、温度和电机。
- 用 Python GUI 实时显示目标、地图位置并控制雷达。

## 怎么利用
先选择 AERIS-10N 或 AERIS-10X 版本，从生产文件订购 PCB、按 BOM 采购器件并依照原理图装配；随后烧录 FPGA/STM32 固件、完成硬件 bring-up，再用 Python GUI 观察经脉冲压缩和 CFAR 处理后的目标数据。

## 实际例子
**官方构建路径对应场景 →** 在大学实验室搭建 AERIS-10N 雷达研究台。 **输入 →** 仓库中的 Gerber/BOM/CPL、8×16 贴片阵列、FPGA/STM32 工具链和测试目标。 **操作 →** 制板装配，按 bring-up 文档分板验证电源与时钟，再烧录固件并启动 GUI。 **输出 →** 可在地图界面显示探测目标、用于研究波束成形和 Doppler/CFAR 参数的实验系统。

## 适合谁
具备射频、PCB、FPGA 或雷达信号处理能力的高校实验室、无人机研发团队和高级 SDR 爱好者。

## 局限 / 注意点
项目明确标为 Alpha / Work in Progress，README 也说明尚无独立装配指南；10.5 GHz 高功率射频、20 km 版本的 GaN 功放和高压电源具有安全与监管风险。制造、发射和户外测试前必须由合格工程师审查，并取得当地频谱许可；硬件采用 CERN-OHL-P，软件/固件采用 MIT。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-29 | 4 | +158 | 25751 |

## 相关主题
[[Topics/Hardware|Hardware]] · [[Topics/Signal-Processing|Signal-Processing]]

## 相关日报
- [[Daily/2026/09/2026-09-29|2026-09-29]]

