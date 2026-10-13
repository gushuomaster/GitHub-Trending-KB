---
type: github-project
repo: "Friedrich-M/UniMate"
url: "https://github.com/Friedrich-M/UniMate"
first_seen: "2026-10-02"
last_seen: "2026-10-02"
trending_count: 1
github_rank: 15
language: null
total_stars: null
forks: null
stars_today: null
category: ["AI", "3D", "Animation", "Research"]
tags: ["text-to-animation", "skeleton", "rig", "motion"]
topics: ["AI", "3D", "Animation"]
---
# Friedrich-M/UniMate

## 一句话说明
用一个文本到动画模型驱动不同拓扑的骨骼和自定义 rig，无需为每种骨架重新训练或在推理时优化。

## 它能做什么
- 根据短文本提示为不同骨骼拓扑生成关节运动。
- 用 `rig_preprocess` 处理 rigged GLB、glTF、FBX，并让用户复核 LLM 生成的关节标签与朝向。
- 支持动作插帧、文本引导动作编辑和多段动作扩展。
- 把采样运动驱动回对应网格，并导出动画 GLB/FBX。

## 怎么利用
先下载 released checkpoint；使用 UniML3D 已处理骨骼，或把自己的 rigged 资产交给 `rig_preprocess`。人工检查关节标签和 facing pair 后，用与训练字幕风格一致的短提示采样多个候选，再运行 mesh-driving 脚本导出动画。输入是骨骼、网格和文本，输出是运动数组及动画资产。

## 实际例子
**官方自定义资产示例 →** 为 Unitree Go2 机器狗生成小跑。**输入 →** 已预处理的 Go2 资产和 `An object trots forward.`。**操作 →** 用 `unimate.inference.sample` 从 `unimate_uniml3d_f60_v3` 采样多个结果，再运行 `run_animate_motion.sh`。**输出 →** 机器狗骨骼运动，以及驱动后的动画 GLB/FBX。

## 关键命令
```bash
python -m unimate.inference.sample --exp_dir outputs/unimate_uniml3d_f60_v3 \
  --asset assets/examples/unitree_go2 --prompt "An object trots forward."
bash scripts/run_animate_motion.sh outputs/samples/custom
```

## 适合谁
研究通用骨骼动作生成的图形学/机器人团队，以及需要为多类 rigged 角色快速制作动作原型的技术美术。

## 局限 / 注意点
项目明确是早期工作，许多动作和骨骼仍会失败；提示词应贴近 “An object …” 的训练字幕风格并生成多个候选。完整 UniML3D 约 88GB；代码、checkpoint、Mixamo、Objaverse 与 Truebones 数据分别受 MIT、CC BY-NC 4.0 或源数据许可证约束，商业使用前必须逐项核对。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-02 | 15 | 未保存 | 未保存 | 日期匹配语言不限归档 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/3D|3D]] · [[Topics/Animation|Animation]]

## 相关日报
- [[Daily/2026/10/2026-10-02|2026-10-02]]

## GitHub 原始链接
https://github.com/Friedrich-M/UniMate

## 官方资料核对
- 核对日期：2026-10-13
- README：https://github.com/Friedrich-M/UniMate/blob/main/README.md
- README blob SHA：aa52a87cdd6620e8a70a044a2fa93c51c533e56f
- 说明：模型能力、数据与许可证只代表核对日，不冒充 2026-10-02 的项目状态。
