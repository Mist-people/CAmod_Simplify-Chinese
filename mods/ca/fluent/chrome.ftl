## Player ranks
## Simplified Chinese translation by lsxy, 2026.06.
label-player-level = 当前军衔：{ $level }
label-player-level-current-xp = 当前经验：{ $currentXp }
label-player-level-required-xp = 下一军衔所需经验：{ $nextLevelXp }

label-player-influence-level = 影响力等级：{ $level }
label-player-influence-level-time = 距下一级还有 { $time }
label-player-influence-coalition = 联盟：{ $coalition }
label-player-influence-policy = 政策：{ $policy }

label-covenant-level = 契约等级：{ $level }
label-covenant-description = 通过摧毁敌方采矿车，
    或摧毁/占领/渗透敌方建筑获得。

## ObserverStatsLogic
options-observer-stats =
    .none = 信息：无
    .basic = 基础
    .economy = 经济
    .production = 生产
    .support-powers = 支援能力
    .combat = 战斗
    .army = 军队
    .upgrades = 升级
    .build-order = 建造顺序
    .units-produced = 单位生产
    .earnings-graph = 收入（图表）
    .army-graph = 军队价值（图表）
    .team-army-graph = 团队价值（图表）

## chrome/gamesave-loading.yaml
label-gamesave-loading-screen-loadtime-line1 = 加载时间较长，这是因为OpenRA引擎处理存档的方式所致。
label-gamesave-loading-screen-loadtime-line2 = 它从游戏开始以最快速度重放（因此游戏越长=加载时间越长）。

## chrome/ingame-player.yaml
button-command-bar-attack-move =
    .tooltip = 移动攻击
    .tooltipdesc =
    选中单位将移动到目标位置
    并攻击沿途遇到的任何敌人。

    按住 <(Ctrl)> 键并选择目标可下达突击移动命令，
    攻击沿途遇到的任何单位或建筑。

    左键点击图标，然后右键点击目标位置。

button-command-bar-force-move =
    .tooltip = 强制移动
    .tooltipdesc =
    选中单位将移动到目标位置
     - 目标的默认行为被抑制
     - 载具将尝试碾压目标位置的敌人
     - 直升机将在目标位置降落
     - 超时空坦克将向目标位置传送

    左键点击图标，然后右键点击目标。
    按住 <(Alt)> 键可在指挥单位时临时激活。

button-command-bar-force-attack =
    .tooltip = 强制攻击
    .tooltipdesc =
    选中单位将攻击目标单位或位置
     - 目标的默认行为被抑制
     - 允许攻击己方或盟军
     - 远程炮兵单位将始终攻击
       位置，忽略单位和建筑

    左键点击图标，然后右键点击目标。
    按住 <(Ctrl)> 键可在指挥单位时临时激活。

button-command-bar-guard =
    .tooltip = 守卫
    .tooltipdesc =
    选中单位将跟随目标单位。

    左键点击图标，然后右键点击目标单位。

button-command-bar-deploy =
    .tooltip = 部署
    .tooltipdesc =
    选中单位将执行默认部署操作：
     - 移动基地车将展开为建造场
     - 建造场将重新打包为移动基地车
     - 运输单位将卸载乘客
     - 爆破卡车和MAD坦克将自毁
     - 布雷车将部署地雷
     - 飞行器将返回基地

    立即对选中单位生效。

button-command-bar-scatter =
    .tooltip = 分散
    .tooltipdesc =
    选中单位将停止当前活动
    并移动到附近位置。

    立即对选中单位生效。

button-command-bar-stop =
    .tooltip = 停止
    .tooltipdesc =
    选中单位将停止当前活动。
    选中建筑将重置集结点。

    立即对选中目标生效。

button-command-bar-queue-orders =
    .tooltip = 路径点模式
    .tooltipdesc =
    使用路径点模式为选中单位下达
    多个连续命令。单位将在收到命令后
    立即执行。

    左键点击图标，然后在游戏世界中下达命令。
    按住 <(Shift)> 键可在指挥单位时临时激活。

button-stance-bar-attackanything =
    .tooltip = 侵略姿态
    .tooltipdesc =
    将选中单位设为侵略姿态：
     - 单位发现敌方单位和建筑时会主动攻击
     - 单位会在战场上追击攻击者

button-stance-bar-defend =
    .tooltip = 防御姿态
    .tooltipdesc =
    将选中单位设为防御姿态：
     - 单位发现敌方单位时会主动攻击
     - 单位不会移动或追击敌人

button-stance-bar-returnfire =
    .tooltip = 固守姿态
    .tooltipdesc =
    将选中单位设为固守姿态：
     - 单位仅对攻击自己的敌人进行反击
     - 单位不会移动或追击敌人

button-stance-bar-holdfire =
    .tooltip = 停火姿态
    .tooltipdesc =
    将选中单位设为停火姿态：
     - 单位不会向敌人开火
     - 单位不会移动或追击敌人

button-top-buttons-beacon-tooltip = 放置信标
button-top-buttons-sell-tooltip = 出售
button-top-buttons-power-tooltip = 断电
button-top-buttons-repair-tooltip = 维修

## SupportPowerTimerWidget
support-power-timer = { $support-power }: { $time }

supportpowers-support-powers-palette =
    .ready = 准备就绪
    .hold = 暂缓

## IngameMenuLogic
menu-ingame =
    .leave = 离开
    .abort = 中止任务
    .restart = 重新开始
    .surrender = 投降
    .load-game = 载入游戏
    .save-game = 保存游戏
    .music = 音乐
    .settings = 设置
    .return-to-map = 返回地图
    .resume = 继续游戏
    .save-map = 保存地图
    .exit-map = 退出地图编辑器
    .encyclopedia = 百科

label-assetbrowser-title = 资源浏览器

label-assetbrowser-source-selector-desc = 选择资源来源

dropdownbutton-assetbrowser-source-selector = 文件夹

dropdownbutton-assetbrowser-asset-types-dropdown = 资源类型

label-assetbrowser-filename-desc = 按名称筛选

label-assetbrowser-sprite-scale = 缩放：

label-assetbrowser-palette-desc = 调色板：

label-assetbrowser-sprite-bg-error = 文件显示错误，详情请查看 assetbrowser.log。

## color-picker.yaml

button-color-chooser-random = 随机

button-color-chooser-store = 存储

button-color-chooser-mixer-tab = 混合器

button-color-chooser-palette-tab = 调色板

label-preset-header = 预设颜色

label-custom-header = 自定义颜色

## confirmation-dialogs.yaml

button-prompt-confirm = 确认

button-prompt-other = 重新开始

button-text-input-prompt-accept = 确定

## connection.yaml

label-connectionfailed-panel-password = 密码：

button-connectionfailed-panel-abort = 中止

label-connecting-panel-title = 正在连接

button-connecting-panel-abort = 中止

label-connection-switchmod-panel-title = 切换模组

label-connection-switchmod-panel-desc = 此服务器正在运行不同的模组：

label-connection-switchmod-panel-desc2 = 切换模组并加入服务器？

button-connection-switchmod-panel-switch = 切换

button-connection-switchmod-panel-abort = 中止

## credits.yaml, mainmenu.yaml

label-credits-title = 鸣谢

## editor.yaml

label-new-map-bg-title = 新地图

label-new-map-bg-tileset = 地形集：

label-new-map-bg-width = 宽度：

label-new-map-bg-height = 高度：

button-new-map-bg-create = 创建


label-save-map-panel-heading = 保存地图

label-save-map-panel-title = 标题：

label-save-map-panel-author = 作者：

label-save-map-panel-visibility = 可见性：

dropdownbutton-save-map-panel-visibility-dropdown = 地图可见性

label-save-map-panel-directory = 目录：

label-save-map-panel-filename = 文件名：

button-save-map-panel = 保存

button-container-ok = 确定

label-tiles-bg-search = 搜索：

label-bg-filter = 筛选：

label-actors-bg-search = 搜索：

label-actor-bg-owner = 所有者：

label-area-selection = 区域选择

label-area-info = 区域信息

label-selected-area-diagonal = 对角线：

label-selected-area-resources = 资源：

label-selection-filters = 筛选器

label-filter-terrain = 地形

label-filter-resources = 资源

label-filter-actors = 单位

label-tool-bg-category = 工具：

button-marker-tiles-clear-current = 清除当前

button-marker-tiles-clear-all = 清除全部

label-marker-layer-num-sides = 边数

label-marker-alpha = 地块透明度

label-marker-mirror-mode = 镜像模式

label-marker-axis-angle = 轴角度


button-map-editor-tab-container-select-tooltip = 选择

button-map-editor-tab-container-tiles-tooltip = 地块

button-map-editor-tab-container-overlays-tooltip = 叠加层

button-map-editor-tab-container-actors-tooltip = 单位

button-map-editor-tab-container-tools-tooltip = 工具

button-map-editor-tab-container-history-tooltip = 历史记录


button-delete-area =
    .label = 删除
    .tooltip = 移除选中区域内的所有内容


button-delete-actor =
    .label = 删除
    .tooltip = 移除选中的单位


button-editor-world-root-options =
    .label = 菜单
    .tooltip = 菜单


button-editor-world-root-copy =
    .label = 复制
    .tooltip = 复制选中区域


button-editor-world-root-paste =
    .label = 粘贴
    .tooltip = 粘贴已保存的区域


button-editor-world-root-undo =
    .label = 撤销
    .tooltip = 撤销上一步


button-editor-world-root-redo =
    .label = 重做
    .tooltip = 重做上一步


dropdownbutton-editor-world-root-overlay-button = 叠加层

button-select-categories-buttons-all = 全部

button-select-categories-buttons-none = 无


label-tool-marker-tiles = 标记地块

## gamesave-browser.yaml

label-gamesave-browser-panel-load-title = 载入游戏

label-gamesave-browser-panel-save-title = 保存游戏

label-gamesave-browser-panel-title = [创建新文件]

button-gamesave-browser-panel-delete-all = 删除全部

button-gamesave-browser-panel-delete = 删除

button-gamesave-browser-panel-rename = 重命名

button-gamesave-browser-panel-load = 载入

button-gamesave-browser-panel-save = 保存

## ingame-chat.yaml, ingame-infochat.yaml

button-chat-chrome-mode =
    .label = 队伍
    .tooltip = 切换聊天模式

## ingame-debug-hpf.yaml

dropdownbutton-hpf-overlay-locomotor = 选择移动方式

dropdownbutton-hpf-overlay-check = 选择单位阻挡

## ingame-debug.yaml

label-debug-panel-title = 调试选项

checkbox-debug-panel-instant-build = 瞬间建造速度

checkbox-debug-panel-enable-tech = 全部可建造

checkbox-debug-panel-build-anywhere = 随处建造

checkbox-debug-panel-unlimited-power = 无限电力

checkbox-debug-panel-instant-charge = 瞬间充能时间

checkbox-debug-panel-disable-visibility-checks = 禁用视野检查

button-debug-panel-give-cash = 给予 $20,000

button-debug-panel-grow-resources = 矿物增长

button-debug-panel-give-exploration = 清除黑幕

button-debug-panel-reset-exploration = 重置黑幕

label-debug-panel-visualizations-title = 可视化元素

checkbox-debug-panel-show-unit-paths = 显示单位路径

checkbox-debug-panel-show-customterrain-overlay = 显示自定义地形

checkbox-debug-panel-show-actor-tags = 显示单位标签

checkbox-debug-panel-show-combatoverlay = 显示战斗几何

checkbox-debug-panel-show-geometry = 显示渲染几何

checkbox-debug-panel-show-terrain-overlay = 显示地形几何

checkbox-debug-panel-show-screenmap = 显示屏幕布局

## ingame-infoobjectives.yaml

label-mission-objectives = 任务：

## ingame-infoscripterror.yaml

label-script-error-panel-desc-a = 地图脚本遇到致命错误

label-script-error-panel-desc-b = 错误详情已保存到日志目录中的 lua.log。

label-script-error-panel-desc-c = 请将此文件发送给地图作者以便修复此问题。

## ingame-infostats.yaml

label-mission-objective = 任务：

checkbox-stats-objective = 消灭所有敌人！

label-map-category-Conquest = 作战
label-map-category-Minigame = 小游戏
label-map-category-Testing = 测试

label-stats-player = 玩家

label-stats-faction = 阵营

label-stats-score = 分数

label-stats-actions = 行动

## ingame-menu.yaml

label-menu-buttons-title = 选项

## lobby-kickdialogs.yaml

label-kick-client-dialog-text-a = 你也可以施加临时封禁，

label-kick-client-dialog-text-b = 阻止他们在本局游戏剩余时间内重新加入。

checkbox-kick-client-dialog-prevent-rejoining = 临时封禁

button-kick-client-dialog = 踢出

label-kick-spectators-dialog-title = 踢出观战者

button-kick-spectators-dialog-ok = 确定

label-force-start-dialog-title = 开始游戏

label-force-start-dialog-text-a = 一名或多名玩家尚未准备。

label-force-start-dialog-text-b = 确定要强制开始游戏吗？

label-kick-warning-a = 一个或多个客户端缺少所选

label-kick-warning-b = 地图，将被踢出服务器。

button-force-start-dialog-start = 开始

## lobby-mappreview.yaml

label-map-incompatible-status-a = 此地图不兼容

label-map-incompatible-status-b = 此版本的 OpenRA

label-map-validating-status = 正在验证...

button-map-download-available-install = 安装地图

button-map-preview-update = 更新地图

button-map-update-download-available-install = 安装地图

label-map-preview-searching = 正在搜索 OpenRA 资源中心...

label-map-unavailable-a = 在以下位置未找到此地图：

label-map-unavailable-b = OpenRA 资源中心

label-map-preview-error = 安装过程中发生错误

label-map-update-available-a = 在你的计算机上发现

label-map-update-available-b = 该地图的新版本

## lobby-music.yaml

label-music-controls-volume = 音量：

## lobby-music.yaml, lobby.yaml, mainmenu.yaml

label-music-title = 音乐

## lobby-music.yaml, musicplayer.yaml

label-music-controls-length = 时长

checkbox-music-controls-shuffle = 随机播放

checkbox-music-controls-loop = 循环

label-container-title = 曲目

label-no-music-title = 音乐未安装

label-no-music-desc-a = 可以从"资源管理"菜单

label-no-music-desc-b = 安装游戏音乐。

## lobby-options.yaml

label-lobby-options-bin-title = 地图选项

## lobby-players.yaml

label-lobby-players-name = 名称

label-lobby-players-color = 颜色

label-lobby-players-faction = 阵营

label-lobby-players-team = 队伍

label-lobby-players-handicap = 劣势

label-lobby-players-spawn = 出生点

label-lobby-players-ready = 准备就绪

dropdownbutton-lobby-players-handicap-tooltip = 劣势会降低玩家部队的战斗力

button-lobby-players-join = 在此位置游玩

label-lobby-players-spectator = 观战者

checkbox-lobby-players-new-spectator-toggle = 允许观战者？

button-lobby-players-spectate = 观战

## lobby-servers.yaml

image-lobby-servers-bin-password-protected-tooltip = 需要密码

image-lobby-servers-bin-requires-authentication-tooltip = 需要 OpenRA 论坛账号

dropdownbutton-lobby-servers-bin-filters = 筛选游戏

## lobby-servers.yaml, multiplayer-browser.yaml

label-container-server = 服务器

label-container-players = 玩家

label-container-location = 位置

label-container-status = 状态

label-notice-container-outdated-version = 你正在运行过时的 OpenRA 版本，请从 www.openra.net 下载最新版本

label-notice-container-unknown-version = 你正在运行无法识别的 OpenRA 版本，请从 www.openra.net 下载最新版本

label-notice-container-playtest-available = 下一版 OpenRA 预览版已可供测试，请从 www.openra.net 下载

## lobby.yaml

dropdownbutton-server-lobby-slots = 位置管理

button-server-lobby-reset-options = 重置默认

button-skirmish-tabs-players-tab = 玩家

button-skirmish-tabs-options-tab = 选项

button-multiplayer-tabs-players-tab = 玩家

button-multiplayer-tabs-options-tab = 选项

button-multiplayer-tabs-servers-tab = 服务器

button-server-lobby-changemap = 更换地图


button-lobbychat-chat-mode =
    .label = 队伍
    .tooltip = 切换聊天模式


button-server-lobby-start-game = 开始游戏

button-server-lobby-disconnect = 离开游戏

## mainmenu-prompts.yaml

label-mainmenu-introduction-prompt-title = 正在建立战场控制

label-mainmenu-introduction-prompt-desc-a = 欢迎回来，指挥官！请使用以下选项初始化战斗参数。

label-mainmenu-introduction-prompt-desc-b = 其他选项可以稍后从设置菜单中配置。

label-mainmenu-system-info-prompt-title = 正在建立战场控制

label-mainmenu-system-info-prompt-text-a = 我们想收集一些系统信息以帮助优化 OpenRA。

label-mainmenu-system-info-prompt-text-b = 在您同意的情况下，每次游戏启动时将发送以下匿名数据：

checkbox-mainmenu-system-info-prompt-sysinfo = 发送系统信息

## mainmenu-prompts.yaml, settings-display.yaml

label-profile-section-header = 个人资料

label-player-container = 玩家名称：

label-playercolor-container-color = 首选颜色：

label-display-section-header = 显示

label-battlefield-camera-dropdown = 战场视角：

label-ui-scale-dropdown = UI 缩放：

checkbox-cursordouble-container = 增大光标尺寸

## mainmenu-prompts.yaml, settings-input.yaml

label-input-section-header = 输入

label-mouse-control-container = 操作方案：

label-mouse-control-desc-classic-selection = - 使用鼠标<左键>选择单位

label-mouse-control-desc-classic-commands = - 使用鼠标<左键>命令单位

label-mouse-control-desc-classic-buildings = - 使用鼠标<左键>放置建筑

label-mouse-control-desc-classic-support = - 使用鼠标<左键>瞄准支援能力

label-mouse-control-desc-classic-zoom = - 使用<滚轮>缩放战场

label-mouse-control-desc-classic-zoom-modifier = - 使用<修饰键 + 滚轮>缩放战场

label-mouse-control-desc-classic-scroll-right = - 使用鼠标<右键>平移战场

label-mouse-control-desc-classic-scroll-middle = - 使用鼠标<中键>平移战场

label-mouse-control-desc-classic-edgescroll = 或将光标移动到屏幕边缘

label-mouse-control-desc-modern-selection = - 使用鼠标<左键>选择单位

label-mouse-control-desc-modern-commands = - 使用鼠标<右键>命令单位

label-mouse-control-desc-modern-buildings = - 使用鼠标<左键>放置建筑

label-mouse-control-desc-modern-support = - 使用鼠标<左键>瞄准支援能力

label-mouse-control-desc-modern-zoom = - 使用<滚轮>缩放战场

label-mouse-control-desc-modern-zoom-modifier = - 使用<修饰键 + 滚轮>缩放战场

label-mouse-control-desc-modern-scroll-right = - 使用鼠标<右键>平移战场

label-mouse-control-desc-modern-scroll-middle = - 使用鼠标<中键>平移战场

label-mouse-control-desc-modern-edgescroll = 或将光标移动到屏幕边缘

checkbox-edgescroll-container = 屏幕边缘平移

## mainmenu.yaml

label-singleplayer-title = 单人游戏

button-extras-title = 附加功能

button-main-menu-content = 资源管理

button-singleplayer-menu-skirmish = 遭遇战

button-singleplayer-menu-load = 载入

button-extras-menu-replays = 录像回放

label-map-editor-title = 地图编辑器

button-extras-menu-assetbrowser = 资源浏览器

button-map-editor-new-map = 新地图

button-map-editor-load-map = 加载地图

dropdownbutton-news-bg-button = 战地新闻

label-update-notice-a = 你正在运行过时的 OpenRA 版本。

label-update-notice-b = 请从 www.openra.net 下载最新版本

## mainmenu.yaml, missionbrowser.yaml

label-missions-title = 战役任务

## mainmenu.yaml, multiplayer-browser.yaml

label-multiplayer-title = 多人游戏

## mainmenu.yaml, settings.yaml

button-settings-title = 设置

## map-chooser.yaml

label-mapchooser-panel-title = 选择地图

button-mapchooser-panel-system-maps-tab = 官方地图

button-mapchooser-panel-remote-maps-tab = 服务器地图

button-mapchooser-panel-user-maps-tab = 自定义地图

label-filter-order-controls-desc = 筛选：

label-filter-order-controls-desc-joiner = 在

label-filter-order-controls-orderby = 排序方式：

button-mapchooser-panel-randommap = 随机地图

button-mapchooser-panel-delete-map = 删除地图

button-mapchooser-panel-delete-all-maps = 删除全部地图

button-mapchooser-panel-ok = 确定

## missionbrowser.yaml

button-missionbrowser-panel-start-briefing-video = 观看简报

button-missionbrowser-panel-stop-briefing-video = 停止简报

button-missionbrowser-panel-start-info-video = 观看信息视频

button-missionbrowser-panel-stop-info-video = 停止信息视频

button-missionbrowser-panel-play = 开始

button-missionbrowser-panel-mission-info = 任务信息

button-missionbrowser-panel-mission-options = 选项

dropdown-missionbrowser-difficulty =
    .label = 难度
    .description = 任务难度。


dropdown-missionbrowser-gamespeed = 速度：

label-missionbrowser-normal-difficulty = 普通

## multiplayer-browser.yaml

image-multiplayer-panel-password-protected-tooltip = 需要密码

image-multiplayer-panel-requires-authentication-tooltip = 需要 OpenRA 论坛账号

button-selected-server-join = 加入

dropdownbutton-multiplayer-panel-filters = 筛选游戏

button-multiplayer-panel-directconnect = 直连IP

button-multiplayer-panel-create = 创建

## multiplayer-browserpanels.yaml

checkbox-multiplayer-filter-panel-waiting-for-players = 等待中

checkbox-multiplayer-filter-panel-empty = 空

checkbox-multiplayer-filter-panel-password-protected = 有密码

checkbox-multiplayer-filter-panel-already-started = 已开始

checkbox-multiplayer-filter-panel-incompatible-version = 不兼容

## multiplayer-createserver.yaml

label-multiplayer-createserver-panel-title = 创建服务器

label-multiplayer-createserver-panel-server-name = 服务器名称：

label-multiplayer-createserver-panel-password = 密码：

label-multiplayer-createserver-panel-after-password = （可选）

label-multiplayer-createserver-panel-listen-port = 端口：

checkbox-multiplayer-createserver-panel-advertise = 在线上发布

label-notices-lan-advertising = - 游戏将仅在局域网内发布。

label-notices-lan-firewall = - 你必须手动配置防火墙以允许连接。

label-notices-lan-portforward-a = - 如果你手动配置路由器端口转发，

label-notices-lan-portforward-b = 玩家可以通过互联网使用直连IP连接。

label-notices-no-upnp-advertising = - 游戏将发布到局域网和互联网。

label-notices-no-upnp-firewall = - 你必须手动配置防火墙以允许连接。

label-notices-no-upnp-portforward-a = - 你必须手动配置路由器以允许并转发

label-notices-no-upnp-portforward-b = 到你的本地IP和端口的连接。

label-notices-no-upnp-settings-a = - 你可以在设置菜单的高级选项卡中

label-notices-no-upnp-settings-b = 启用 UPnP/NAT-PMP（如果路由器支持）。

label-notices-upnp-advertising = - 游戏将发布到局域网和互联网。

label-notices-upnp-firewall = - 你必须手动配置防火墙以允许连接。

label-notices-upnp-portforward-a = - 游戏将自动配置端口转发。

label-notices-upnp-settings-a = - 你可以在设置菜单中禁用 UPnP/NAT-PMP。

button-multiplayer-createserver-panel-change-map = 更换地图

button-multiplayer-createserver-panel-create = 创建

## multiplayer-directconnect.yaml

label-directconnect-panel-title = 连接到服务器

label-directconnect-panel-address = 服务器地址：

button-directconnect-panel-join = 加入

## playerprofile.yaml

button-profile-header-logout = 登出

label-generate-keys-desc-a = 连接到论坛账号以向其他玩家

label-generate-keys-desc-b = 表明你的身份，加入私人

label-generate-keys-desc-c = 服务器并显示徽章。

button-generate-keys-key = 连接到 OpenRA 论坛账号

label-generating-keys-desc-a = 正在生成身份验证密钥对。

label-generating-keys-desc-b = 这需要几秒钟...

label-register-fingerprint-desc-a = 身份验证密钥已复制到你的

label-register-fingerprint-desc-b = 剪贴板。请将其添加到 OpenRA 论坛的

label-register-fingerprint-desc-c = 用户控制面板中，然后按下继续。

label-checking-fingerprint-desc-a = 正在从 OpenRA 论坛查询

label-checking-fingerprint-desc-b = 账号详情...

label-fingerprint-not-found-desc-a = 你的身份验证密钥未连接到

label-fingerprint-not-found-desc-b = OpenRA 论坛账号。

label-connection-error-desc-a = 无法连接到 OpenRA 论坛。

label-connection-error-desc-b = 请检查你的互联网连接。

## replaybrowser.yaml

label-replaybrowser-panel-title = 录像查看器

label-filters-title = 筛选

label-filters-flt-gametype-desc = 类型：

dropdownbutton-filters-any = 任意

label-filters-flt-date-desc = 日期：

label-filters-flt-duration-desc = 时长：

label-filters-flt-mapname-desc = 地图：

label-filters-flt-player-desc = 玩家：

dropdownbutton-filters-flt-player = 任何人

label-filters-flt-outcome-desc = 结果：

label-filters-flt-faction-desc = 阵营：

button-filters-flt-reset = 重置筛选

label-management-manage-title = 管理

button-management-mng-rensel = 重命名

button-management-mng-delsel = 删除

button-management-mng-delall = 删除全部

label-replay-list-container-replaybrowser-title = 选择录像

button-replaybrowser-panel-watch = 观看

## settings-advanced.yaml

label-network-section-header = 高级

checkbox-nat-discovery-container = 启用 UPnP/NAT-PMP 发现

checkbox-fetch-news-container = 获取社区新闻

checkbox-perfgraph-container = 显示性能图表

checkbox-check-version-container = 检查更新

checkbox-perftext-container = 显示性能文本

checkbox-sendsysinfo-container = 发送系统信息

label-sendsysinfo-checkbox-container-desc = 你的操作系统、OpenGL 和 .NET 运行时版本以及语言设置将与匿名ID一起发送，以帮助确定未来开发优先级。

label-debug-section-header = 开发者

label-debug-hidden-container-a = 可以通过以下方式启用其他开发者专属选项：

label-debug-hidden-container-b = Debug.DisplayDeveloperSettings 设置或启动参数

checkbox-botdebug-container = 显示AI调试消息

checkbox-checkbotsync-container = 检查 BotModule 代码同步

checkbox-luadebug-container = 显示地图调试消息

checkbox-checkunsynced-container = 检查非同步代码同步

checkbox-replay-commands-container = 在录像中启用调试命令

checkbox-perflogging-container = 启用 Tick 性能日志

## settings-audio.yaml

label-audio-section-header = 音频

label-no-audio-device-container = 音频控制需要活动的声音设备

checkbox-cash-ticks-container = 资金滴答声

checkbox-mute-sound-container = 静音

label-sound-volume-container = 音效音量：


checkbox-mute-background-music-container =
    .label = 菜单音乐静音
    .tooltip = 无特定曲目播放时静音背景音乐


label-music-title-volume-container = 音乐音量：

label-audio-device-container = 音频设备：

label-video-volume-container = 视频音量：

label-restart-required-container-audio-desc = 设备更改将在游戏重启后生效

## settings-display.yaml

label-target-lines-dropdown-container = 目标线：

label-status-bar-dropdown-container-bars = 状态条：


checkbox-player-stance-colors-container =
    .label = 玩家关系颜色
    .tooltip = 根据关系更改玩家颜色（己方、敌方、盟友、中立）


checkbox-ui-feedback-container =
    .label = 显示UI反馈通知
    .tooltip = 显示UI事件的临时文本通知


checkbox-transients-container =
    .label = 显示游戏事件通知
    .tooltip = 显示游戏事件的临时文本通知


checkbox-pause-shellmap-container = 暂停菜单背景

checkbox-hide-replay-chat-container = 在录像中隐藏聊天

label-video-section-header = 视频

label-video-mode-dropdown-container = 视频模式

dropdownbutton-video-mode-dropdown-container = 窗口化

label-window-resolution-container-size = 窗口大小

label-display-selection-container = 选择显示器

dropdownbutton-display-selection-container-dropdown = 标准

checkbox-vsync-container = 启用垂直同步

checkbox-frame-limit-gamespeed-container = 将帧率限制为游戏 Tick 速率

label-gl-profile-dropdown-container = OpenGL 配置

label-restart-required-container-video-desc = 显示和 OpenGL 更改需要重启

## settings-hotkeys.yaml

hotkey-group-game-commands = 游戏命令

hotkey-group-viewport-commands = 视口命令

hotkey-group-observer-replay-commands = 观战 / 录像命令

hotkey-group-unit-commands = 单位命令

hotkey-group-unit-stance-commands = 单位姿态命令

hotkey-group-production-commands = 生产命令

hotkey-group-support-power-commands = 支援能力命令

hotkey-group-music-commands = 音乐命令

hotkey-group-chat-commands = 聊天命令

hotkey-group-control-groups = 编队

hotkey-group-editor-commands = 编辑器命令

label-hotkeys-panel-filter-input = 按名称筛选：

label-hotkeys-panel-context-dropdown = 上下文：

label-hotkey-empty-list-message = 没有符合筛选条件的热键。

label-notices-readonly-notice = 此热键无法修改

button-hotkey-remap-dialog-override = 覆盖


button-hotkey-remap-dialog-clear =
    .label = 清除
    .tooltip = 取消绑定热键


button-hotkey-remap-dialog-reset =
    .label = 重置
    .tooltip = Reset to default

## settings-input.yaml

label-zoom-modifier-container = 缩放修饰键：

checkbox-alternate-scroll-container = 备用鼠标平移

checkbox-lockmouse-container = 锁定鼠标到窗口

label-mouse-scroll-type-container = 平移行为：

label-scrollspeed-slider-container-scroll-speed = 平移速度：

label-zoomspeed-slider-container-zoom-speed = 缩放速度：

label-ui-scrollspeed-slider-container-scroll-speed = UI 滚动速度：

## settings.yaml

button-settings-panel-reset = 重置

## tooltips.yaml

label-latency-tooltip-prefix = 延迟：

label-anonymous-player-tooltip-name = 匿名玩家

label-bot-managed-by-tooltip = AI 由 { $name } 管理

label-game-admin = 游戏管理员

## gamesave-loading.yaml

label-gamesave-loading-screen-title = 正在载入存档

label-gamesave-loading-screen-desc = 按 Escape 取消加载并返回主菜单

## encyclopedia categories

encyclopedia-category-Allies = 盟军
encyclopedia-category-Soviets = 苏联
encyclopedia-category-GDI = GDI
encyclopedia-category-Nod = Nod
encyclopedia-category-Scrin = 思金人
encyclopedia-category-Other = 其他

encyclopedia-category-Infantry = 步兵
encyclopedia-category-Vehicles = 载具
encyclopedia-category-Aircraft = 飞行器
encyclopedia-category-Naval = 海军
encyclopedia-category-Buildings = 建筑
encyclopedia-category-Defenses = 防御
encyclopedia-category-Upgrades = 升级
encyclopedia-category-Support-Powers = 支援能力
encyclopedia-category-Shared-Support-Powers = 共用支援能力
encyclopedia-category-Stolen-Technology = 窃取科技
encyclopedia-category-Tech-Buildings = 科技建筑
encyclopedia-category-Tech-Units = 科技单位
encyclopedia-category-Buffs = 增益效果
encyclopedia-category-Debuffs = 减益效果
encyclopedia-category-Tips = 提示

encyclopedia-subfaction-only = { $factionName } 专属。
