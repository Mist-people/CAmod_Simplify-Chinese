# Combined Arms — Simplified Chinese Localization

## Overview

- Maintainer: lsxy (凌水小月)
- Last modified: 2026.06
- License: GPL-3.0
- Status: Unofficial localization, not affiliated with the original Combined Arms team

## Scope

This project provides Simplified Chinese localization for Combined Arms (CAmod). Only user-visible text has been modified (UI text, unit names and descriptions, faction descriptions, hotkey text, encyclopedia content, mission dialogue, map titles and descriptions, etc.). No game logic, numeric values, or resource files have been altered.

### Translation Coverage

| Category | Description |
|----------|-------------|
| Fluent text (.ftl) | UI text, hotkeys, rule descriptions, encyclopedia, factions, options, etc. |
| Chrome layout (.yaml) | Inline text in UI layouts, including `chrome/common/` engine-level overrides (42 files) |
| Rule descriptions (.yaml) | Name, Description fields for units/structures/upgrades |
| Lua scripts (.lua) | Mission dialogue and objective text |
| Map files (map.yaml) | Mission and skirmish map titles and descriptions |

### Chinese Font

Includes Source Han Sans SC (SIL Open Font License 1.1), stored in `mods/ca/fonts/`. All font references in `mod.chrome.yaml` have been replaced from `ca|bombard.ttf` / `ca|bombardreg.ttf` to `ca|fonts/SourceHanSansSC-Medium.otf` / `ca|fonts/SourceHanSansSC-Regular.otf`.

### Chrome Layout Overrides

All `common|chrome/` references (~40) in `mods/ca/mod.chrome.yaml` have been changed to `ca|chrome/common/`, pointing to the mod's own 42 engine-level Chrome YAML files (with Chinese translations). These files originally belonged to the engine's `common/` mod and could not be modified directly in the mod repository, so they were copied into the mod with redirected references.

### File Header Comments

- .ftl files: `## Simplified Chinese translation by lsxy, 2026.06.`
- .yaml files (chrome/rules): `# Simplified Chinese translation by lsxy, 2026.06.`
- .lua files: `-- Simplified Chinese translation by lsxy, 2026.06.`

Due to the large number of map files (104 mission map.yaml + 71 skirmish map.yaml), these are declared modified via the NOTICE file rather than individual per-file comments.

### C# Source Modifications

The following C# source files were modified because their hardcoded English display text could not be translated externally via YAML/FTL:

| File | Changes | Reason |
|------|---------|--------|
| `OpenRA.Mods.CA/Widgets/Logic/Ingame/SelectionTooltipLogic.cs` | Armor type display name translation (Infantry→步兵, Light→轻型, Heavy→重型, Defense→防御建筑, Building→建筑, Wall→围墙, Aircraft→飞行器). The `GetArmorTypeLabel()` method switch maps internal identifiers to display names. | Armor Type values are game damage calculation identifiers; changing them in YAML would break game logic. |
| `OpenRA.Mods.CA/Widgets/Logic/EncyclopediaLogicCA.cs` | Encyclopedia category names, subfaction labels, and variant selector button text via FTL lookup. Specific changes:<br>1. Category folder/tab labels use `encyclopedia-category-{node.Name}` FTL keys (3 locations)<br>2. Subfaction "XX only" text via `encyclopedia-subfaction-only` FTL key<br>3. Variant selector button text changed to "选择变体..." | Category tree nodes are built from YAML Category field values split by `/`. Direct YAML translation causes tree overlap. FTL combined with C# lookup correctly overrides display. |
| `engine/OpenRA.Mods.Common/Widgets/WidgetUtils.cs` | Added CJK character-level line wrapping to `WrapText`: when text contains no spaces and exceeds the target width, breaks at the last character that fits. | Original implementation only wraps at ASCII space characters. Chinese text has no spaces, causing text to never wrap and overflow the display area. |

> The engine directory is fetched via `fetch-engine.sh` and is not tracked by git in this repository. A patch file `engine-cjk-wrap.patch` is provided in the repository root and is automatically applied by `fetch-engine.sh` after engine extraction.

### Files Intentionally Unmodified

The following files contain no user-visible text and remain unchanged:
- `ca/rules/ai.yaml`
- `ca/rules/bridges.yaml`
- `ca/rules/palettes.yaml`
- `ca/chrome/ingame-transients.yaml`

## Upstream

- Original project: [Inq8/CAmod](https://github.com/Inq8/CAmod)
- Version: 1.08.2
- ModDB: [Command & Conquer - Combined Arms](https://www.moddb.com/mods/command-conquer-combined-arms)
- Discord: https://discord.gg/CxFYWEJ

## Acknowledgments

This localization references translation approaches from the following sources, with gratitude:

- Existing translated names from the C&C/OpenRA Chinese localization community
- [OpenRA Chinese Localization Team](https://gitee.com/openra_cn/OpenRA)

---

# Combined Arms — 简体中文本地化修改说明

## 基本信息

- 汉化维护：凌水小月
- 修改日期：2026.06
- 许可证：GPL-3.0
- 状态：非官方汉化，不代表原 Combined Arms 团队

## 修改范围

本项目对 Combined Arms (CAmod) 进行了简体中文本地化，仅修改用户可见文本（界面文字、单位名称与描述、阵营说明、热键文本、百科内容、任务对话、地图标题与描述等），未修改任何游戏逻辑、数值或资源文件。

### 翻译覆盖

| 类别 | 说明 |
|------|------|
| Fluent 文本 (.ftl) | 界面文本、热键、规则描述、百科、阵营、选项等 |
| Chrome 布局 (.yaml) | UI 布局中的内嵌文本，含 `chrome/common/` 引擎级覆盖（42 个文件） |
| 规则描述 (.yaml) | 单位/建筑/升级的 Name、Description 等字段 |
| Lua 脚本 (.lua) | 任务对话、目标文本 |
| 地图文件 (map.yaml) | 任务与遭遇战地图标题、描述 |

### 中文字体

包含 Source Han Sans SC（思源黑体简体中文版），以 SIL Open Font License 1.1 授权。
存放于 `mods/ca/fonts/`。`mod.chrome.yaml` 中所有字体引用已从原 `ca|bombard.ttf`/`ca|bombardreg.ttf` 替换为 `ca|fonts/SourceHanSansSC-Medium.otf`/`ca|fonts/SourceHanSansSC-Regular.otf`。

### Chrome 布局覆盖

`mods/ca/mod.chrome.yaml` 的 `ChromeLayout` 段中所有 `common|chrome/` 引用（约 40 处）已改为 `ca|chrome/common/`，指向 mod 自带的 42 个引擎级 Chrome YAML 文件（含中文翻译）。这些文件原属于引擎 `common/` mod，无法在 mod 仓库中直接修改，因此复制到 mod 内并重定向引用。

### 文件头部注释说明

- .ftl 文件：`## Simplified Chinese translation by lsxy, 2026.06.`
- .yaml 文件（chrome/rules）：`# Simplified Chinese translation by lsxy, 2026.06.`
- .lua 文件：`-- Simplified Chinese translation by lsxy, 2026.06.`

数量过多的地图文件（104 个任务 map.yaml + 71 个遭遇战 map.yaml）通过 NOTICE 文件统一声明修改，不逐文件添加头部注释。

### C# 源码修改

以下少量 C# 源码文件因硬编码英文显示文本无法从 YAML/FTL 外部翻译，已做必要修改：

| 文件 | 修改内容 | 无法外围翻译的原因 |
|------|---------|-------------------|
| `OpenRA.Mods.CA/Widgets/Logic/Ingame/SelectionTooltipLogic.cs` | 盔甲类型显示名翻译（Infantry→步兵、Light→轻型、Heavy→重型等 7 处）。`GetArmorTypeLabel()` 方法中的 switch 将内部标识符映射为显示名。 | Armor Type 值同时是游戏伤害计算标识符，改 YAML 会破坏逻辑。 |
| `OpenRA.Mods.CA/Widgets/Logic/EncyclopediaLogicCA.cs` | 百科分类名、次阵营标识、变体选择按钮通过 FTL 查找显示中文。具体修改：<br>1. 分类标签/标签按钮通过 `encyclopedia-category-{node.Name}` 从 FTL 获取翻译（3 处）<br>2. 次阵营"XX 专属"文本通过 `encyclopedia-subfaction-only` FTL key 获取<br>3. 变体选择按钮文本改为"选择变体..." | 分类名通过 `/` 构建树节点，节点名来自 YAML Category 字段，直接改 YAML 会导致树重叠。FTL 配合 C# 查找可正确覆盖。 |
| `engine/OpenRA.Mods.Common/Widgets/WidgetUtils.cs` | `WrapText` 方法增加 CJK 逐字换行支持：当文本不含空格且超出宽度时，按字符边界断行。 | 原实现仅按英文空格断行，中文文本无空格导致永不换行、文本溢出显示区域。 |

> engine 目录通过 `fetch-engine.sh` 获取，不在本仓库 git 追踪范围内。仓库根目录提供了 `engine-cjk-wrap.patch` 补丁文件，`fetch-engine.sh` 会在提取 engine 后自动应用。

### 明确未修改的文件

以下文件不包含用户可见文本，保持原样：
- `ca/rules/ai.yaml`
- `ca/rules/bridges.yaml`
- `ca/rules/palettes.yaml`
- `ca/chrome/ingame-transients.yaml`

## 上游信息

- 原项目：[Inq8/CAmod](https://github.com/Inq8/CAmod)
- 版本：1.08.2
- ModDB：[Command & Conquer - Combined Arms](https://www.moddb.com/mods/command-conquer-combined-arms)
- Discord：https://discord.gg/CxFYWEJ

## 致谢

本项目翻译过程中参考了以下来源的译法方案，在此表示感谢：

- 网上 C&C/OpenRA 汉化社区贡献者的已有译名
- [OpenRA汉化组](https://gitee.com/openra_cn/OpenRA)的汉化方案