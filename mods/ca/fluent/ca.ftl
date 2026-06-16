## Metadata
## Simplified Chinese translation by lsxy, 2026.06.
mod-title = 联合武装
mod-windowtitle = OpenRA 联合武装

## Debug Commands
description-squadpaths-debug-overlay = 切换AI小队寻路路线可视化。

## Bots
bot-easy-ai =
    .name = 简单AI

bot-normal-ai =
    .name = 普通AI

bot-hard-ai =
    .name = 困难AI

bot-vhard-ai =
    .name = 非常困难AI

bot-brutal-ai =
    .name = 残暴AI

bot-naval-ai =
    .name = 海军AI

button-cancel = 取消

button-retry = 重试

button-back = 返回

button-continue = 继续

button-quit = 退出

## Server Orders

notification-custom-rules = 此地图包含自定义规则，游戏体验可能会发生变化。

notification-map-bots-disabled = 此地图已禁用AI。

notification-two-humans-required = 此服务器至少需要两名人类玩家才能开始比赛。

notification-unknown-server-command = 未知服务器命令：{ $command }。

notification-admin-start-game = 只有房主可以开始游戏。

notification-no-start-until-required-slots-full = 需要的位置未满，无法开始游戏。

notification-no-start-without-players = 没有玩家无法开始游戏。

notification-insufficient-enabled-spawn-points = 需要启用更多出生点才能开始游戏。

notification-malformed-command = 格式错误的 { $command } 命令。

notification-state-unchanged-ready = 已标记为准备时无法更改状态。

notification-invalid-faction-selected = 选择的阵营无效：{ $faction }。

notification-state-unchanged-game-started = 游戏开始后无法更改状态（{ $command }）。

notification-requires-host = 只有房主可以执行此操作。

notification-invalid-bot-slot = 无法将AI添加到有其他客户端的位置。

notification-invalid-bot-type = 无效的AI类型。

notification-admin-change-map = 只有房主可以更换地图。

notification-player-disconnected = { $player } 已断开连接。

notification-team-player-disconnected = { $player }（队伍 { $team }）已断开连接。

notification-observer-disconnected = { $player }（观战者）已断开连接。

notification-unknown-map = 服务器上未找到该地图。

notification-searching-map = Searching for maps on the Resource Center...

notification-admin-change-configuration = 只有房主可以更改配置。

notification-changed-map = { $player } 将地图更换为 { $map }。

notification-option-changed = { $player } 将 { $name } 更改为 { $value }。

notification-you-were-kicked = 你已被踢出服务器。

notification-admin-kicked = { $admin } 将 { $player } 踢出了服务器。

notification-kicked = { $player } 被踢出了服务器。

notification-temp-ban = { $admin } 暂时封禁了 { $player }。

notification-admin-transfer-admin = 只有管理员可以将管理员权限转移给其他玩家。

notification-admin-move-spectators = 只有房主可以将玩家移至观战席。

notification-empty-slot = 该位置没有人。

notification-move-spectators = { $admin } 将 { $player } 移至观战席。

notification-nick-changed = { $player } 现在更名为 { $name }。

notification-player-dropped = 一名玩家因超时被移除。

notification-connection-problems = { $player } 正在遇到连接问题。

notification-timeout-dropped = { $player } 因超时被移除。

notification-timeout-dropped-in =
    { $timeout ->
        [one] { $player } 将在 { $timeout } 秒后被移除。
       *[other] { $player } 将在 { $timeout } 秒后被移除。
    }

notification-error-game-started = 游戏已经开始。

notification-requires-password = 服务器需要密码。

notification-incorrect-password = 密码错误。

notification-incompatible-mod = 服务器运行着不兼容的模组。

notification-incompatible-version = 服务器运行着不兼容的版本。

notification-incompatible-protocol = 服务器运行着不兼容的协议。

notification-you-were-banned = 你已被此服务器封禁。

notification-you-were-temp-banned = 你已被此服务器暂时封禁。

notification-game-full = 游戏已满。

notification-new-admin = { $player } 现在是管理员。

notification-option-locked = { $option } 无法更改。

notification-invalid-configuration-command = 无效的配置命令。

notification-admin-option = 只有房主可以设置该选项。

notification-error-number-teams = 无法解析队伍数量：{ $raw }。

notification-admin-kick = 只有房主可以踢出玩家。

notification-kick-self = 房主无法踢出自己。

notification-kick-none = 该位置没有人。

notification-no-kick-game-started = 游戏开始后只能踢出观战者和已战败的玩家。

notification-admin-clear-spawn = 只有管理员可以清除出生点。

notification-spawn-occupied = 你无法占据与其他玩家相同的出生点。

notification-spawn-locked = 该出生点已锁定给其他玩家位置。

notification-admin-lobby-info = 只有房主可以设置大厅信息。

notification-invalid-lobby-info = 发送了无效的大厅信息。

notification-player-color-terrain = 颜色已调整以降低与地形的相似度。

notification-player-color-player = 颜色已调整以降低与其他玩家的相似度。

notification-invalid-player-color = 无法确定有效的玩家颜色，已选择随机颜色。

notification-invalid-error-code = 解析错误消息失败。

notification-master-server-connected = 主服务器通信已建立。

notification-master-server-error = 主服务器通信失败。

notification-game-offline = 游戏未在线上发布。

notification-no-port-forward = 服务器端口无法从互联网访问。

notification-blacklisted-server-name = 服务器名称包含被禁用的词语。

notification-requires-authentication = 此服务器要求玩家拥有 OpenRA 论坛账号。

notification-no-permission-to-join = 你没有权限加入此服务器。

notification-slot-closed = 你的位置被房主关闭。

## LobbySettingsNotification

notification-joined = { $player } 已加入游戏。

notification-lobby-disconnected = { $player } 已离开。

## UnitOrders

notification-game-has-started = 游戏已开始。

notification-game-saved = 游戏已保存。

notification-game-paused = 游戏已被 { $player } 暂停。

notification-game-unpaused = 游戏已被 { $player } 恢复。

## Server

notification-game-started = 游戏已开始。

## PlayerMessageTracker

notification-chat-temp-disabled =
    { $remaining ->
        [one] 聊天已禁用，请在 { $remaining } 秒后重试。
       *[other] 聊天已禁用，请在 { $remaining } 秒后重试。
    }

## VoteKickTracker

notification-unable-to-start-a-vote = 无法发起投票。

notification-insufficient-votes-to-kick = 踢出玩家 { $kickee } 的票数不足。

notification-kick-already-voted = 你已经投过票了。

notification-vote-kick-started = 玩家 { $kicker } 发起了踢出玩家 { $kickee } 的投票。

notification-vote-kick-in-progress = { $percentage }% 的玩家投票踢出玩家 { $kickee }。

notification-vote-kick-ended = 踢出玩家 { $kickee } 的投票未通过。

## ActorEditLogic

label-duplicate-actor-id = 重复的单位ID

label-actor-id = 输入一个单位ID

label-actor-owner = 拥有者

## ActorSelectorLogic

label-actor-type = 类型：{ $actorType }

## CommonSelectorLogic

options-common-selector =
    .search-results = 搜索结果
    .all = 全部
    .multiple = 多个
    .none = 无

## SaveMapLogic

label-unpacked-map = 已解包


dialog-save-map-failed =
    .title = 保存地图失败
    .prompt = 详情请查看 debug.log。
    .confirm = 确定


dialog-overwrite-map-failed =
    .title = 警告
    .prompt = 保存将覆盖
    已存在的地图。
    .confirm = 保存


dialog-overwrite-map-outside-edit =
    .title = 警告
    .prompt = 地图已在编辑器外被修改。
    保存可能会覆盖进度。
    .confirm = 保存


notification-save-current-map = 已保存当前地图。

## GameInfoLogic

menu-game-info =
    .objectives = 目标
    .briefing = 简报
    .options = 选项
    .debug = 调试模式
    .chat = 聊天

## GameInfoObjectivesLogic, GameInfoStatsLogic

label-mission-in-progress = 进行中

label-mission-accomplished = 已完成

label-mission-failed = 失败

## GameInfoStatsLogic

label-client-state-disconnected = 已离开

label-mute-player = 静音此玩家

label-unmute-player = 取消静音此玩家

button-kick-player = 踢出此玩家

button-vote-kick-player = 投票踢出此玩家


dialog-kick =
    .title = 踢出 { $player }？
    .prompt = 此玩家将无法重新加入游戏。
    .confirm = 踢出


dialog-vote-kick =
    .title = 投票踢出 { $player }？
    .prompt = 此玩家将无法重新加入游戏。
    .prompt-break-bots =
    { $bots ->
        [one] 踢出游戏管理员也将踢出 1 个AI。
       *[other] 踢出游戏管理员也将踢出 { $bots } 个AI。
    }
    .vote-start = 发起投票
    .vote-for = 赞成
    .vote-against = 反对
    .vote-cancel = 弃权


notification-vote-kick-disabled = 此服务器已禁用投票踢人。

## GameTimerLogic

label-paused = 已暂停

label-max-speed = 最大速度

label-replay-speed = { $percentage }% 速度

label-replay-complete = 已完成 { $percentage }%

## LobbyLogic, InGameChatLogic

label-chat-disabled = 聊天已禁用

label-chat-availability =
    { $seconds ->
        [one] 聊天将在 { $seconds } 秒后可用...
       *[other] 聊天将在 { $seconds } 秒后可用...
    }

## LobbyLogic, ServerListLogic

label-bot-player = AI玩家

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


dialog-leave-mission =
    .title = 离开任务
    .prompt = 离开游戏并返回主菜单？
    .confirm = 离开
    .cancel = 留下


dialog-restart-mission =
    .title = 重新开始
    .prompt = 确定要重新开始吗？
    .confirm = 重新开始
    .cancel = 留下


dialog-surrender =
    .title = 投降
    .prompt = 确定要投降吗？
    .confirm = 投降
    .cancel = 留下


dialog-error-max-player =
    .title = 错误：超出最大玩家数
    .prompt = 定义的玩家数量过多（{ $players }/{ $max }）。
    .confirm = 返回


dialog-exit-map-editor =
    .title = 退出地图编辑器
    .prompt-unsaved = 退出并丢失所有未保存的更改？
    .prompt-deleted = 地图可能已在编辑器外被删除
    .confirm-anyway = 仍然退出
    .confirm = 退出


dialog-play-map-warning =
    .title = 警告
    .prompt = 地图可能已被删除或包含
    阻止其加载的错误。
    .cancel = 确定


dialog-exit-to-map-editor =
    .title = 离开任务
    .prompt = 离开游戏并返回编辑器？
    .confirm = 返回编辑器
    .cancel = 留下

## IngamePowerBarLogic
## IngamePowerCounterLogic

label-power-usage = 电力使用：{ $usage }/{ $capacity }

label-infinite-power = 无限

## IngameSiloBarLogic
## IngameCashCounterLogic

label-silo-usage = 矿井使用：{ $usage }/{ $capacity }

## ObserverShroudSelectorLogic

options-shroud-selector =
    .all-players = 所有玩家
    .disable-shroud = 禁用战争迷雾
    .other = 其他

## ObserverStatsLogic

options-observer-stats =
    .none = 信息：无
    .basic = 基础
    .economy = 经济
    .production = 生产
    .support-powers = 支援能力
    .combat = 战斗
    .army = 军队
    .earnings-graph = 收入（图表）
    .army-graph = 军队（图表）

## WorldTooltipLogic

label-unrevealed-terrain = 未揭示地形

## DownloadPackageLogic

label-downloading = Downloading { $title }

label-fetching-mirror-list = Fetching list of mirrors...

label-downloading-from = Downloading from { $host } { $received } { $suffix }

label-downloading-from-progress = Downloading from { $host } { $received } / { $total } { $suffix } ({ $progress }%)

label-unknown-host = unknown host

label-download-failed = Download failed

label-verifying-archive = Verifying archive...

label-archive-validation-failed = Archive validation failed

label-extracting-archive = Extracting...

label-extracting-archive-entry = Extracting { $entry }

label-archive-extraction-failed = Archive extraction failed

label-mirror-selection-failed = Online mirror is not available. Please install from an original disc.

## InstallFromSourceLogic

label-detecting-sources = Detecting drives

label-checking-sources = Checking Sources

label-searching-source-for = Searching for { $title }

label-content-package-installation = Select which content packages you want to install:

label-game-sources = Game Sources

label-digital-installs = Digital Installs

label-game-content-not-found = Game Content Not Found

label-alternative-content-sources = Please insert or install one of the following content sources:

label-installing-content = Installing Content

label-copying-filename = Copying { $filename }

label-copying-filename-progress = Copying { $filename } ({ $progress }%)

label-installation-failed = Installation Failed

label-check-install-log = Refer to install.log in the logs directory for details.

label-extracting-filename = Extracting { $filename }

label-extracting-filename-progress = Extracting { $filename } ({ $progress }%)

## ModContentLogic

button-manual-install = Manual Install

## KickClientLogic

dialog-kick-client =
    .prompt = 踢出 { $player }？

## KickSpectatorsLogic

dialog-kick-spectators =
    .prompt =
    { $count ->
        [one] 确定要踢出 1 名观战者吗？
       *[other] 确定要踢出 { $count } 名观战者吗？
    }

## LobbyLogic

options-slot-admin =
    .add-bots = 添加
    .remove-bots = 移除
    .configure-bots = 配置AI
    .teams-count = { $count } 队
    .humans-vs-bots = 人类 vs AI
    .free-for-all = 自由混战
    .configure-teams = 配置队伍

## LobbyLogic, InGameChatLogic

button-general-chat = 全部

button-team-chat = 队伍

## LobbyOptionsLogic, MissionBrowserLogic

label-not-available = 不可用

## LobbyUtils

options-lobby-slot =
    .slot = 位置
    .open = 开放
    .closed = 关闭
    .bots = AI
    .bots-disabled = AI已禁用

## MapPreviewLogic

label-connecting = Connecting...

label-downloading-map = Downloading { $size } kB

label-downloading-map-progress = Downloading { $size } kB ({ $progress }%)

button-retry-install = Retry Install

button-retry-search = Retry Search
## also MapChooserLogic

label-created-by = 作者：{ $author }

## SpawnSelectorTooltipLogic

label-disabled-spawn = 已禁用出生点

label-available-spawn = 可用出生点

## DisplaySettingsLogic

options-camera =
    .close = 近
    .medium = 中
    .far = 远
    .furthest = 最远


options-display-mode =
    .windowed = 窗口化
    .legacy-fullscreen = 全屏（旧版）
    .fullscreen = 全屏


label-video-display-index = 显示器 { $number }


options-status-bars =
    .standard = 标准
    .show-on-damage = 受伤时显示
    .always-show = 始终显示


options-target-lines =
    .automatic = 自动
    .manual = 手动
    .disabled = 禁用


checkbox-frame-limiter = 启用帧率限制（{ $fps } FPS）

## HotkeysSettingsLogic

label-original-notice = 默认为"{ $key }"

label-duplicate-notice = 此按键已在 { $context } 环境中用于"{ $key }"

hotkey-context-any = 任意

## InputSettingsLogic

options-mouse-scroll-type =
    .disabled = 禁用
    .standard = 标准
    .inverted = 反转
    .joystick = 摇杆

## InputSettingsLogic, IntroductionPromptLogic

options-control-scheme =
    .classic = 经典
    .modern = 现代

## SettingsLogic

dialog-settings-save =
    .title = 需要重启
    .prompt = 部分更改需要重启游戏后
    才会生效。
    .cancel = 继续


dialog-settings-restart =
    .title = 立即重启？
    .prompt = 部分更改需要重启游戏后
    才会生效。是否立即重启？
    .confirm = 立即重启
    .cancel = 稍后重启


dialog-settings-reset =
    .title = 重置 { $panel }
    .prompt = 确定要重置此面板中的
    所有设置吗？
    .confirm = 重置
    .cancel = 取消

## AssetBrowserLogic

label-all-packages = All Packages

label-length-in-seconds = { $length } 秒

## ConnectionLogic

label-connecting-to-endpoint = Connecting to { $endpoint }...

label-could-not-connect-to-target = 无法连接到 { $target }

label-unknown-error = 未知错误

label-password-required = 需要密码

label-connection-failed = 连接失败

notification-mod-switch-failed = 切换模组失败。

## GameSaveBrowserLogic

dialog-rename-save =
    .title = 重命名存档
    .prompt = 输入新的文件名：
    .confirm = 重命名


dialog-delete-save =
    .title = 删除选中的存档？
    .prompt = 删除'{ $save }'。
    .confirm = 删除


dialog-delete-all-saves =
    .title = 删除所有存档？
    .prompt =
    { $count ->
        [one] 删除 { $count } 个存档。
       *[other] 删除 { $count } 个存档。
    }
    .confirm = 全部删除


notification-save-deletion-failed = 删除存档文件'{ $savePath }'失败，详情请查看日志。


dialog-overwrite-save =
    .title = 覆盖存档？
    .prompt = 覆盖 { $file }？
    .confirm = 覆盖

## MainMenuLogic

label-loading-news = 正在加载新闻

label-news-retrieval-failed = 获取新闻失败：{ $message }

label-news-parsing-failed = 解析新闻失败：{ $message }

label-author-datetime = 作者：{ $author } 时间：{ $datetime }

## MapChooserLogic

label-all-maps = 所有地图

label-no-matches = 无匹配结果

label-player-count =
    { $players ->
        [one] { $players } 名玩家
       *[other] { $players } 名玩家
    }

label-map-size-huge = （超大）

label-map-size-large = （大）

label-map-size-medium = （中）

label-map-size-small = （小）

label-map-searching-count =
    { $count ->
        [one] 正在 OpenRA 资源中心搜索 { $count } 张地图...
       *[other] 正在 OpenRA 资源中心搜索 { $count } 张地图...
    }

label-map-unavailable-count =
    { $count ->
        [one] OpenRA 资源中心未找到 { $count } 张地图
       *[other] OpenRA 资源中心未找到 { $count } 张地图
    }


notification-map-deletion-failed = 删除地图'{ $map }'失败，详情请查看 debug.log 文件。


dialog-delete-map =
    .title = 删除地图
    .prompt = 删除地图'{ $title }'？
    .confirm = 删除


dialog-delete-all-maps =
    .title = 删除地图
    .prompt = 删除此页面上的所有地图？
    .confirm = 删除


options-order-maps =
    .player-count = 玩家
    .title = 标题
    .date = 日期
    .size = 大小

## MissionBrowserLogic

dialog-no-video =
    .title = 视频未安装
    .prompt = 可以从模组选择器的
    "资源管理"菜单安装游戏视频。
    .cancel = 返回


dialog-cant-play-video =
    .title = 无法播放视频
    .prompt = 视频播放过程中出现问题。
    .cancel = 返回

## MusicPlayerLogic

label-sound-muted = 音频已在设置中静音。

label-no-song-playing = 当前无音乐播放

## MuteHotkeyLogic

label-audio-muted = 音频已静音。

label-audio-unmuted = 音频已取消静音。

## PlayerProfileLogic

label-loading-player-profile = 正在加载玩家资料...

label-loading-player-profile-failed = 加载玩家资料失败。

## ProductionTooltipLogic, EncyclopediaLogic

label-requires = 需要 { $prerequisites }。

## ReplayBrowserLogic

label-duration = 时长：{ $time }


options-replay-type =
    .singleplayer = 单人游戏
    .multiplayer = 多人游戏


options-winstate =
    .victory = 胜利
    .defeat = 战败


options-replay-date =
    .today = 今天
    .last-week = 最近 7 天
    .last-fortnight = 最近 14 天
    .last-month = 最近 30 天


options-replay-duration =
    .very-short = 5 分钟以下
    .short = 短（10 分钟）
    .medium = 中（30 分钟）
    .long = 长（60 分钟以上）


dialog-rename-replay =
    .title = 重命名录像
    .prompt = 输入新的文件名：
    .confirm = 重命名


dialog-delete-replay =
    .title = 删除选中的录像？
    .prompt = 删除录像 { $replay }？
    .confirm = 删除


dialog-delete-all-replays =
    .title = 删除所有选中的录像？
    .prompt =
    { $count ->
        [one] 删除 { $count } 个录像。
       *[other] 删除 { $count } 个录像。
    }
    .confirm = 全部删除


notification-replay-deletion-failed = 删除录像文件'{ $file }'失败，详情请查看 debug.log 文件。

## ReplayUtils

-incompatible-replay-recorded = 此录像录制于


dialog-incompatible-replay =
    .title = 不兼容的录像
    .prompt = 无法读取录像元数据。
    .confirm = 确定
    .prompt-unknown-version = { -incompatible-replay-recorded }未知版本。
    .prompt-unknown-mod = { -incompatible-replay-recorded }未知模组。
    .prompt-unavailable-mod = { -incompatible-replay-recorded }不可用的模组：{ $mod }。
    .prompt-incompatible-version = { -incompatible-replay-recorded }不兼容的版本：
    { $version }。
    .prompt-unavailable-map = { -incompatible-replay-recorded }不可用的地图：
    { $map }。

# SelectUnitsByTypeHotkeyLogic

nothing-selected = 未选择任何单位。

## SelectUnitsByTypeHotkeyLogic, SelectAllUnitsHotkeyLogic

selected-units-across-screen =
    { $units ->
        [one] 选择了屏幕范围内的 1 个单位。
       *[other] 选择了屏幕范围内的 { $units } 个单位。
    }


selected-units-across-map =
    { $units ->
        [one] 选择了全图范围内的 1 个单位。
       *[other] 选择了全图范围内的 { $units } 个单位。
    }

## ServerCreationLogic

label-internet-server-nat-A = 互联网服务器（UPnP/NAT-PMP

label-internet-server-nat-B-enabled = 已启用

label-internet-server-nat-B-not-supported = 不支持

label-internet-server-nat-B-disabled = 已禁用

label-local-server = 本地服务器：


dialog-server-creation-failed =
    .prompt = 无法监听端口 { $port }。
    .prompt-port-used = 请检查该端口是否已被占用。
    .prompt-error = 错误信息："{ $message }" ({ $code })。
    .title = 服务器创建失败
    .cancel = 返回

## ServerListLogic

label-players-online-count =
    { $players ->
        [one] { $players } 名玩家在线
       *[other] { $players } 名玩家在线
    }


label-search-status-failed = 查询服务器列表失败。

label-search-status-no-games = 未找到游戏，请尝试更改筛选条件。

label-no-server-selected = 未选择服务器


label-map-status-searching = Searching...

label-map-classification-unknown = 未知地图


label-players-count =
    { $players ->
        [0] 无玩家
        [one] 1 名玩家
       *[other] { $players } 名玩家
    }


label-bots-count =
    { $bots ->
        [0] 无AI
        [one] 1 个AI
       *[other] { $bots } 个AI
    }

## ServerListLogic, ReplayBrowserLogic, ObserverShroudSelectorLogic

label-players = 玩家

## ServerListLogic, GameInfoStatsLogic

label-spectators = 观战者

label-spectators-count =
    { $spectators ->
        [0] 无观战者
        [one] 1 名观战者
       *[other] { $spectators } 名观战者
    }

## ServerlistLogic, GameInfoStatsLogic, ObserverShroudSelectorLogic, SpawnSelectorTooltipLogic, ReplayBrowserLogic

label-team-name = 队伍 { $team }

label-no-team = 无队伍


label-playing = 游戏中

label-waiting = 等待中


label-other-players-count =
    { $players ->
        [one] 1 名其他玩家
       *[other] { $players } 名其他玩家
    }


label-in-progress-for =
    { $minutes ->
        [0] 已进行不到 1 分钟。
        [one] 已进行 { $minutes } 分钟。
       *[other] 已进行 { $minutes } 分钟。
    }


label-password-protected = 密码保护

label-waiting-for-players = 等待玩家中

label-server-shutting-down = 服务器正在关闭

label-unknown-server-state = 未知服务器状态

## Game

notification-saved-screenshot = 已保存截图 { $filename }

## ChatCommands

notification-invalid-command = { $name } 不是有效的命令。

## DebugVisualizationCommands

description-combat-geometry = 切换战斗几何叠加层。

description-render-geometry = 切换渲染几何叠加层。

description-screen-map-overlay = 切换屏幕地图叠加层。

description-depth-buffer = 切换深度缓冲叠加层。

description-actor-tags-overlay = 切换单位标签叠加层。

## DevCommands

notification-cheats-disabled = 作弊功能已禁用。

notification-invalid-cash-amount = 无效的现金数额。

description-toggle-visibility = 切换可见性检查和小地图。

description-give-cash = 给予默认或指定数量的金钱。

description-give-cash-all = 给予所有玩家和AI默认或指定数量的金钱。

description-instant-building = 切换立即建造。

description-build-anywhere = 切换任意地点建造能力。

description-unlimited-power = 切换无限电力。

description-enable-tech = 切换全部建造能力。

description-fast-charge = 切换支援能力近乎瞬间充能。

description-dev-cheat-all = 切换所有作弊功能并给予一些金钱。

description-dev-crash = 使游戏崩溃。

description-levelup-actor = 为选中的单位增加指定数量的等级。

description-player-experience = 为选中单位的所有者增加指定数量的经验值。

description-power-outage = 对选中单位的所有者造成 5 秒电力中断。

description-kill-selected-actors = 杀死选中的单位。

description-dispose-selected-actors = 移除选中的单位。

## HelpCommands

notification-available-commands = 可用命令如下：

description-no-description = 无可用描述。

description-help-description = 提供各种命令的有用信息。

## PlayerCommands

description-pause-description = 暂停或恢复游戏。

description-surrender-description = 自毁一切并输掉游戏。

## DeveloperMode

notification-cheat-used = 作弊使用：{ $cheat } 由 { $player }{ $suffix }。

## CustomTerrainDebugOverlay

description-custom-terrain-debug-overlay = 切换自定义地形调试叠加层。

## CellTriggerOverlay

description-cell-triggers-overlay = 切换脚本触发器叠加层。

## ExitsDebugOverlay

description-exits-overlay = 显示工厂的出口位置。

## HierarchicalPathFinderOverlay

description-hpf-debug-overlay = 切换分层寻路叠加层。

## PathFinderOverlay

description-path-debug-overlay = 切换路径搜索可视化。

## TerrainGeometryOverlay

description-terrain-geometry-overlay = 切换地形几何叠加层。

## MapOptions, MissionBrowserLogic

options-game-speed =
    .slowest = 最慢
    .slower = 较慢
    .normal = 正常
    .fast = 快
    .faster = 较快
    .fastest = 最快

## TimeLimitManager

options-time-limit =
    .no-limit = 无限制
    .options =
        { $minutes ->
            [one] { $minutes } 分钟
           *[other] { $minutes } 分钟
        }


notification-time-limit-expired = 时间限制已到。

## EditorActorBrush

notification-added-actor = 已添加 { $name } ({ $id })

## EditorCopyPasteBrush

notification-copied-tiles =
    { $amount ->
       [one] 复制了 1 个地块
      *[other] 复制了 { $amount } 个地块
    }

## EditorDefaultBrush

notification-selected-area = 已选择区域 { $x },{ $y } ({ $width },{ $height })

notification-removed-area = 已移除区域 { $x },{ $y } ({ $width },{ $height })

notification-selected-actor = 已选择单位 { $id }

notification-cleared-selection = 已清除选择

notification-removed-actor = 已移除 { $name } ({ $id })

notification-removed-resource = 已移除 { $type }

notification-moved-actor = 已将 { $id } 从 { $x1 },{ $y1 } 移动到 { $x2 },{ $y2 }

## EditorResourceBrush

notification-added-resource =
    { $amount ->
       [one] 添加了 1 格 { $type }
      *[other] 添加了 { $amount } 格 { $type }
    }

## EditorTileBrush

notification-added-tile = 已添加地块 { $id }

notification-filled-tile = 已用 { $id } 地块填充

## EditorMarkerLayerBrush

notification-added-marker-tiles =
    { $amount ->
       [one] 添加了 1 个 { $type } 类型的标记地块
      *[other] 添加了 { $amount } 个 { $type } 类型的标记地块
    }

notification-removed-marker-tiles =
    { $amount ->
       [one] 移除了 1 个标记地块
      *[other] 移除了 { $amount } 个标记地块
    }

notification-cleared-selected-marker-tiles = 清除了 { $amount } 个 { $type } 类型的标记地块

notification-cleared-all-marker-tiles = 清除了 { $amount } 个标记地块

## EditorActionManager

notification-opened = 已打开

## MapOverlaysLogic

mirror-mode =
    .none = 无
    .flip = 翻转
    .rotate = 旋转

## ActorEditLogic

notification-edited-actor = 已编辑 { $name } ({ $id })

notification-edited-actor-id = 已编辑 { $name }（{ $old-id }-> { $new-id }）

## ConquestVictoryConditions, StrategicVictoryConditions

notification-player-is-victorious = { $player } 取得了胜利。

notification-player-is-defeated = { $player } 已被击败。

## OrderManager

notification-desync-compare-logs = 在第 { $frame } 帧不同步。
    请与其他玩家比对 syncreport.log。

## SupportPowerTimerWidget

support-power-timer = { $player } 的 { $support-power }：{ $time }

## WidgetUtils

label-win-state-won = 胜利

label-win-state-lost = 失败

## Player

keycode-modifier =
    .alt = Alt
    .ctrl = Ctrl
    .meta = Meta
    .cmd = Cmd
    .shift = Shift
    .none = 无

## KeycodeExts

keycode =
    .unknown = 未定义
    .return = 回车
    .escape = Escape
    .backspace = 退格
    .tab = Tab
    .space = 空格
    .exclaim = !
    .quotedbl = "
    .hash = #
    .percent = %
    .dollar = $
    .ampersand = &
    .quote = '
    .leftparen = (
    .rightparen = )
    .asterisk = *
    .plus = +
    .comma = ,
    .minus = -
    .period = .
    .slash = /
    .number_0 = 0
    .number_1 = 1
    .number_2 = 2
    .number_3 = 3
    .number_4 = 4
    .number_5 = 5
    .number_6 = 6
    .number_7 = 7
    .number_8 = 8
    .number_9 = 9
    .colon = :
    .semicolon = ;
    .less = <
    .equals = =
    .greater = >
    .question = ?
    .at = @
    .leftbracket = [
    .backslash = \
    .rightbracket = ]
    .caret = ^
    .underscore = _
    .backquote = `
    .a = A
    .b = B
    .c = C
    .d = D
    .e = E
    .f = F
    .g = G
    .h = H
    .i = I
    .j = J
    .k = K
    .l = L
    .m = M
    .n = N
    .o = O
    .p = P
    .q = Q
    .r = R
    .s = S
    .t = T
    .u = U
    .v = V
    .w = W
    .x = X
    .y = Y
    .z = Z
    .capslock = CapsLock
    .f1 = F1
    .f2 = F2
    .f3 = F3
    .f4 = F4
    .f5 = F5
    .f6 = F6
    .f7 = F7
    .f8 = F8
    .f9 = F9
    .f10 = F10
    .f11 = F11
    .f12 = F12
    .printscreen = PrintScreen
    .scrolllock = ScrollLock
    .pause = Pause
    .insert = Insert
    .home = Home
    .pageup = PageUp
    .delete = 删除
    .end = End
    .pagedown = PageDown
    .right = 右
    .left = 左
    .down = 下
    .up = 上
    .numlockclear = Numlock
    .kp_divide = 小键盘 /
    .kp_multiply = 小键盘 *
    .kp_minus = 小键盘 -
    .kp_plus = 小键盘 +
    .kp_enter = 小键盘 回车
    .kp_1 = 小键盘 1
    .kp_2 = 小键盘 2
    .kp_3 = 小键盘 3
    .kp_4 = 小键盘 4
    .kp_5 = 小键盘 5
    .kp_6 = 小键盘 6
    .kp_7 = 小键盘 7
    .kp_8 = 小键盘 8
    .kp_9 = 小键盘 9
    .kp_0 = 小键盘 0
    .kp_period = 小键盘 .
    .application = Application
    .power = 电力
    .kp_equals = 小键盘 =
    .f13 = F13
    .f14 = F14
    .f15 = F15
    .f16 = F16
    .f17 = F17
    .f18 = F18
    .f19 = F19
    .f20 = F20
    .f21 = F21
    .f22 = F22
    .f23 = F23
    .f24 = F24
    .execute = 执行
    .help = 帮助
    .menu = 菜单
    .select = 选择
    .stop = 停止
    .again = 再次
    .undo = 撤销
    .cut = 剪切
    .copy = 复制
    .paste = 粘贴
    .find = 查找
    .mute = 静音
    .volumeup = 音量+
    .volumedown = 音量-
    .kp_comma = Keypad ,
    .kp_equalsas400 = Keypad (AS400)
    .alterase = AltErase
    .sysreq = SysReq
    .cancel = 取消
    .clear = 清除
    .prior = Prior
    .return2 = 回车
    .separator = 分隔符
    .out = Out
    .oper = Oper
    .clearagain = 清除/再次
    .crsel = CrSel
    .exsel = ExSel
    .kp_00 = 小键盘 00
    .kp_000 = 小键盘 000
    .thousandsseparator = 千位分隔符
    .decimalseparator = 小数分隔符
    .currencyunit = 货币单位
    .currencysubunit = 货币子单位
    .kp_leftparen = 小键盘 (
    .kp_rightparen = 小键盘 )
    .kp_leftbrace = Keypad {"{"}
    .kp_rightbrace = Keypad {"}"}
    .kp_tab = 小键盘 Tab
    .kp_backspace = 小键盘 退格
    .kp_a = 小键盘 A
    .kp_b = 小键盘 B
    .kp_c = 小键盘 C
    .kp_d = 小键盘 D
    .kp_e = 小键盘 E
    .kp_f = 小键盘 F
    .kp_xor = 小键盘 XOR
    .kp_power = 小键盘 ^
    .kp_percent = 小键盘 %
    .kp_less = 小键盘 <
    .kp_greater = 小键盘 >
    .kp_ampersand = 小键盘 &
    .kp_dblampersand = 小键盘 &&
    .kp_verticalbar = 小键盘 |
    .kp_dblverticalbar = 小键盘 ||
    .kp_colon = 小键盘 :
    .kp_hash = 小键盘 #
    .kp_space = 小键盘 空格
    .kp_at = 小键盘 @
    .kp_exclam = 小键盘 !
    .kp_memstore = 小键盘 MemStore
    .kp_memrecall = 小键盘 MemRecall
    .kp_memclear = 小键盘 MemClear
    .kp_memadd = 小键盘 MemAdd
    .kp_memsubtract = 小键盘 MemSubtract
    .kp_memmultiply = 小键盘 MemMultiply
    .kp_memdivide = 小键盘 MemDivide
    .kp_plusminus = 小键盘 +/-
    .kp_clear = 小键盘 清除
    .kp_clearentry = 小键盘 ClearEntry
    .kp_binary = 小键盘 二进制
    .kp_octal = 小键盘 八进制
    .kp_decimal = 小键盘 十进制
    .kp_hexadecimal = 小键盘 十六进制
    .lctrl = 左 Ctrl
    .lshift = 左 Shift
    .lalt = 左 Alt
    .lgui = 左 GUI
    .rctrl = 右 Ctrl
    .rshift = 右 Shift
    .ralt = 右 Alt
    .rgui = 右 GUI
    .mode = ModeSwitch
    .audionext = 下一曲
    .audioprev = 上一曲
    .audiostop = 停止音频
    .audioplay = 播放音频
    .audiomute = 音频静音
    .mediaselect = 媒体选择
    .www = WWW
    .mail = 邮件
    .calculator = 计算器
    .computer = 计算机
    .ac_search = AC 搜索
    .ac_home = AC 主页
    .ac_back = AC 后退
    .ac_forward = AC 前进
    .ac_stop = AC 停止
    .ac_refresh = AC 刷新
    .ac_bookmarks = AC 书签
    .brightnessdown = 亮度-
    .brightnessup = 亮度+
    .displayswitch = 显示切换
    .kbdillumtoggle = 键盘灯开关
    .kbdillumdown = 键盘灯-
    .kbdillumup = 键盘灯+
    .eject = 弹出
    .sleep = 睡眠
    .mouse4 = 鼠标 4
    .mouse5 = 鼠标 5
