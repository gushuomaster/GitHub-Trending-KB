---
type: github-project
repo: NationalSecurityAgency/ghidra
url: https://github.com/NationalSecurityAgency/ghidra
first_seen: '2026-09-16'
last_seen: '2026-10-16'
trending_count: 5
language: Java
total_stars: 88726
forks: 9901
stars_today: 1369
github_rank: 9
fetched_at: '2026-10-16T08:10:32+08:00'
category: [Reverse Engineering, Security, Decompiler]
topics: [Reverse Engineering, Security, Decompiler]
documentation_checked_at: '2026-10-16'
stats_as_of: '2026-10-16'
---

# NationalSecurityAgency/ghidra

## 一句话说明
跨平台的软件逆向工程框架，用反汇编、反编译、程序结构分析和脚本自动化帮助研究人员理解二进制程序。

## 它能做什么
- 分析多种处理器指令集、可执行文件格式与调试信息。
- 提供反汇编、反编译、函数图、交叉引用和数据类型恢复视图。
- 支持无界面批处理，用脚本自动导入和分析大量样本。
- 通过 Java、Python 脚本和扩展组件增加分析器与工作流。

## 怎么利用
准备官方要求的 JDK 25，下载并解压正式 release，运行 `ghidraRun`。输入自己拥有或获授权分析的二进制，在项目中自动分析，再结合反编译器、调用图和交叉引用定位行为；输出可注释的工程、伪代码与分析证据。

## 实际例子
**官方安装与分析流程 → 场景：** 检查自研固件里的未知函数。**输入：** 固件中提取的可执行文件。**操作：** 导入项目、选择处理器和格式、运行自动分析，用反编译器与函数调用图追踪入口。**输出：** 函数边界、交叉引用和伪代码，供工程师验证协议或漏洞假设。

## 关键命令
```sh
./ghidraRun
```

## 适合谁
进行恶意代码分析、固件研究、漏洞研究或兼容性分析的安全研究人员与软件工程师。

## 局限 / 注意点
必须检查项目安全公告，升级时不要覆盖旧安装目录；未知二进制应在隔离环境中处理。反编译结果不是原始源码，需结合汇编与运行证据验证；逆向第三方软件还需确认授权和适用法律。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-16 | 8 | 未保存 | 未保存 | 日期匹配语言不限归档 |
| 2026-09-17 | 10 | 未保存 | 未保存 | 日期匹配语言不限归档 |
| 2026-09-18 | 7 | 未保存 | 未保存 | 日期匹配语言不限归档 |
| 2026-10-15 | 12 | 1008 | 87457 | GitHub Today live snapshot |
| 2026-10-16 | 9 | 1369 | 88726 | GitHub Today live snapshot |

## 相关主题
[[Topics/Reverse Engineering|Reverse Engineering]] · [[Topics/Security|Security]] · [[Topics/Decompiler|Decompiler]]

## 相关日报
- [[Daily/2026/09/2026-09-16|2026-09-16]]
- [[Daily/2026/09/2026-09-17|2026-09-17]]
- [[Daily/2026/09/2026-09-18|2026-09-18]]
- [[Daily/2026/10/2026-10-15|2026-10-15]]
- [[Daily/2026/10/2026-10-16|2026-10-16]]

## GitHub 原始链接
https://github.com/NationalSecurityAgency/ghidra

## 官方资料核对（2026-10-16）
- README：https://github.com/NationalSecurityAgency/ghidra/blob/master/README.md
- 历史核验来源与归档提交时间保留在对应日报及索引记录中；归档提交时间不是页面抓取时间。

