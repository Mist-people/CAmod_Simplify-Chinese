-- Simplified Chinese translation by lsxy, 2026.06.
IsCoop = true

---@type player[]
CoopPlayers = {}

---@type player
local MainPlayer

---@type string[]
SplitOwnerBlacklist = {
	"badr",
	"badr.bomber",
	"badr.cbomber",
	"badr.nbomber",
	"badr.mbomber",
	"badr.chaosbomber",
	"b2b",
	"p51",
	"tran.paradrop",
	"halo.paradrop",
	"halo.paradrop.invuln",
	"nhaw.paradrop",
	"u2",
	"u2.killzone",
	"smig",
	"a10.bomber",
	"c17",
	"c17.cargo",
	"c17.clustermines",
	"c17.xo",
	"uav",
	"ocar.reinforce",
	"ocar.xo",
	"horn",
	"yf23.bomber",
	"pod",
	"pod2",
	"pod3",
	"anto",
	"galx",
	"galx.helios",
	"yf23.interceptor",
	"lst.reinforce"
}

---@type integer
local SharedBank = 0

--- The last player (attempted to be) given a unit in AssignToCoopPlayers.
---@type integer
local LastAssignedCoopID

---------
-- Attack strength modifier has to be in global scope to affect squad definitions.
local CoopAttackStrengthMultiplier = 1
local attackStrengthOptionValue = tonumber(Map.LobbyOption("enattackstr"))

if attackStrengthOptionValue > 0 then
	CoopAttackStrengthMultiplier = 1 + (attackStrengthOptionValue / 100)
end

AttackValueMultipliers[Difficulty] = AttackValueMultipliers[Difficulty] * CoopAttackStrengthMultiplier
CompositionValueMultipliers[Difficulty] = CompositionValueMultipliers[Difficulty] * CoopAttackStrengthMultiplier
UnitBuildTimeMultipliers[Difficulty] = math.max(UnitBuildTimeMultipliers[Difficulty] / CoopAttackStrengthMultiplier, 0.1)
--------

CACoopQueueSyncer = function()
	Trigger.AfterDelay(1, function()
		Utils.Do(CoopPlayers,function(p)
			Actor.Create("QueueUpdaterDummy", true, { Owner = p })
		end)
	end)
end

---@param action fun(player: player)
ForEachPlayer = function(action)
	Utils.Do(CoopPlayers, action)
end

---@return integer
GetCoopPlayerCount = function()
	return #Utils.Where(CoopPlayers, function(cp)
		return cp ~= nil
	end)
end

---@return player[]
GetEvenPlayers = function()
	local players = { }

	--[[
		I've argued with myself if the current player count should be used
		instead of the initial head count. Without more tweaks, I think the
		first has fewer problems in the event of a disconnect. ~ JF
	]]
	for i = 2, GetCoopPlayerCount(), 2 do
		if CoopPlayers[i] then
			players[#players + 1] = CoopPlayers[i]
		end
	end

	return players
end

---@return player[]
GetOddPlayers = function()
	local players = { }

	for i = 1, GetCoopPlayerCount(), 2 do
		if CoopPlayers[i] then
			players[#players + 1] = CoopPlayers[i]
		end
	end

	return players
end

---@return player
RandomCoopPlayer = function()
	if #CoopPlayers == 0 then
		return Neutral
	end
	return Utils.Random(CoopPlayers)
end

---@param unit actor
---@return boolean
IsOwnedByCoopPlayer = function(unit)
	return Utils.Any(CoopPlayers, function(player)
		return unit.Owner == player
	end)
end

---@param player player
---@param players player[]
---@return boolean
IsPlayerInList = function(player, players)
	return Utils.Any(players, function(p)
		return player == p
	end)
end

GetCoopGroundAttackers = function()
	local attackers = { }

	ForEachPlayer(function(player)
		Utils.Concat(attackers, player.GetGroundAttackers())
	end)

	return attackers
end

---@param player player
local function MaintainBotMoney(player)
	local RefineryType = "anyrefinery"
	local BaseBuilderType = "anyconyard"
	local CanBuildBase = player.HasPrerequisites({ BaseBuilderType })
	local HasNoRefineries = not player.HasPrerequisites({ RefineryType })
	local cost = Actor.Cost("proc")
	local bank = player.Cash + player.Resources

	if bank < cost and CanBuildBase and HasNoRefineries then
		player.Cash = cost
	end
end

---@param bot player
---@param interval? integer
local function UpdateCoopBot(bot, interval)
	MaintainBotMoney(bot)

	if not interval then
		return
	end

	Trigger.AfterDelay(interval, function()
		UpdateCoopBot(bot, interval)
	end)
end

local function StartCoopBots()
	local interval = DateTime.Seconds(5)
	local stagger = 3

	local bots = Utils.Where(CoopPlayers, function(player)
		return player.IsBot
	end)

	Utils.Do(bots, function(bot)
		UpdateCoopBot(bot, interval + stagger)
		stagger = stagger + stagger
	end)
end

---@param unit actor
ScatterIfAble = function(unit)
	if unit.HasProperty("Scatter") then
		unit.Scatter()
	end
end

MoveDownIfAble = function(unit)
	if unit.HasProperty("Move") then
		unit.Move(unit.Location + CVec.New(0, 1))
	end
end

---@param unit actor
---@return boolean
local function CanSplitAmongPlayers(unit)
	local matched = Utils.Any(SplitOwnerBlacklist, function(cab)
		return unit.Type == cab
	end)

	return not matched
end

--- Split the ownership of a group among the different co-op players.
---@param units actor[]
---@param specificPlayers? player[]
AssignToCoopPlayers = function(units, specificPlayers, ignoreBlackList)
	if not ignoreBlackList then
		units = Utils.Where(units, CanSplitAmongPlayers)
	end

	local ownerID

	if specificPlayers then
		players = specificPlayers
		ownerID = 0
	else
		players = CoopPlayers
		ownerID = LastAssignedCoopID or 0
	end

	if #players == 0 then
		return
	end

	-- Rotate through the player list and assign a
	-- unit to each until no more units remain.
	Utils.Do(units, function(unit)
		if unit.Type ~= "player" then
			ownerID = ownerID + 1

			if ownerID > #players then
				ownerID = 1
			end

			local newOwner = players[ownerID]

			if not specificPlayers then
				LastAssignedCoopID = ownerID
			end

			unit.Owner = newOwner

			if unit.HasProperty("HasPassengers") then
				Trigger.AfterDelay(1, function()
					if not unit.IsDead then
						AssignToCoopPlayers(Utils.Where(unit.Passengers, function(a) return not a.IsDead end), specificPlayers, ignoreBlackList)
					end
				end)
			end
		end
	end)
end

---@param units actor[]
AssignToEvenPlayers = function(units)
	AssignToCoopPlayers(units, GetEvenPlayers())
end

---@param units actor[]
AssignToOddPlayers = function(units)
	AssignToCoopPlayers(units, GetOddPlayers())
end

GoodSpread = function()
	Trigger.AfterDelay(5, GoodSpread)

	if StopSpread ~= true then
		local actors = Utils.Where(SinglePlayerPlayer.GetActors(), function(a) return a.HasProperty("Move") and not IsHarvester(a) and not IsMcv(a) end)

		if #actors > 0 then
			AssignToCoopPlayers(actors)
		end
	end
end

local function SyncObjectives()
	local texts = {
		primary = "主要目标",
		secondary = "次要目标",
		newPrimary = "新主要目标",
		newSecondary = "新次要目标"
	}

	Trigger.OnObjectiveAdded(MainPlayer, function(_, obid)
		local description = MainPlayer.GetObjectiveDescription(obid)
		local type = MainPlayer.GetObjectiveType(obid)
		local required = type == texts.primary

		ForEachPlayer(function(player)
			player.AddObjective(description, type, required)
			local OBJcolour = HSLColor.Yellow
			if required then
				Media.DisplayMessageToPlayer(player, description, texts.newPrimary, OBJcolour)
			else
				OBJcolour = HSLColor.Gray
				Media.DisplayMessageToPlayer(player, description, texts.newSecondary, OBJcolour)
			end
		end)
	end)

	ForEachPlayer(function(player)
		Trigger.OnPlayerWon(player, function()
			Trigger.AfterDelay(DateTime.Seconds(1), function()
				Media.PlaySpeechNotification(player, "Win")
			end)
		end)

		Trigger.OnPlayerLost(player, function(p)
			PlayerDefeatedOrDisconnected(p)
		end)

		TriggerCA.OnPlayerDisconnected(player, function(p)
			PlayerDefeatedOrDisconnected(p)
		end)
	end)

	Trigger.OnObjectiveCompleted(MainPlayer, function(_, obid)
		ForEachPlayer(function(player)
			player.MarkCompletedObjective(obid)
			if player.IsLocalPlayer then
				Media.PlaySoundNotification(player, "AlertBleep")
				Media.DisplayMessage(MainPlayer.GetObjectiveDescription(obid), "任务完成", HSLColor.LimeGreen)
			end
		end)
	end)

	Trigger.OnObjectiveFailed(MainPlayer, function(_, obid)
		ForEachPlayer(function(player)
			player.MarkFailedObjective(obid)
			if player.IsLocalPlayer then
				Media.PlaySoundNotification(player, "AlertBleep")
				Media.DisplayMessage(MainPlayer.GetObjectiveDescription(obid), "任务失败", HSLColor.Red)
			end
		end)
	end)
end

PlayerDefeatedOrDisconnected = function(player)

	if not IsPlayerInList(player, CoopPlayers) then
		return
	end

	for i, v in ipairs(CoopPlayers) do
		if v == player then
			table.remove(CoopPlayers, i)
			break
		end
	end

	Trigger.AfterDelay(DateTime.Seconds(1), function()
		Media.PlaySpeechNotification(player, "Lose")
	end)

	local surrenderMessages = {
		"PID已经没在投降了！PID已经过去了！这位指挥官不复存在！他们已经停止了存在！PID过期了，去见造物主了！PID硬了！失去了生命，PID安息了！要不是你把他们钉在玩家列表上，PID早就去推雏菊了！他们的新陈代谢过程已成为历史！PID掉下树枝了！PID踢了水桶，PID离开了凡胎肉体，拉下了帷幕，加入了那该死的隐形合唱团！！这是一位前指挥官！！",
		"我们注意到PID擅离职守。其指挥下的所有部队将被重新分配。",
		"我们遗憾地宣布PID在战区失踪。我们负担不起搜索队。所有单位，重新集结。",
		"PID已放弃行动。其资产现归联合指挥。",
		"指挥官PID未能报到。所有单位将被重新分配。",
		"PID失踪。剩余部队现由现役指挥官接管。",
		"报告确认PID已退出战斗。正在重新分配资源。",
		"高层指挥部怀疑PID已被渗透。其部队现在归你了。",
		"PID撤出了。他们的部队还在。好好利用它们。",
		"我们与PID失去了联系。正在接管其剩余部队。",
		"PID被认为不适合指挥。正在重新分配资产。",
		"PID再无音讯。其部队现归统一指挥。",
		"高层指挥部遗憾通知，PID已被沉默。部队正在重新分配。",
		"又一位指挥官倒下了：PID。其遗产通过其部队延续。",
		"PID的指挥频道已静默。将所有部队重定向至幸存特工。",
		"已确认PID投降。其部队将在没有他们的情况下继续战斗。",
		"PID的辞呈已被接受……通过武力。正在重新分配部队。",
		"与PID的卫星链接已切断。其战争资产现在由你支配。",
		"战斗压力战胜了PID。正在接手。",
		"战争伤亡：PID。所有可操作单位重新分配给剩余玩家。",
		"指挥空缺已填补。PID的部队将继续在新的领导下作战。",
		"PID付出了最终代价。其部队由你指挥。",
		"战争不饶任何人。PID倒下了。其部队仍在。",
		"PID已被晋升为平民。通过武力。部队已重新分配。",
		"PID踩到了地雷和职业生涯终结的耻辱。部队已重新分配。",
		"PID忘了支付指挥订阅费。正在重新分配部队。",
		"PID的指挥权已被撤销。启动兵力重新分配。",
		"PID的指挥完整性受损。部队转移至安全频道。",
		"PID的信号消失了。愿他们的牺牲不被白费。",
		"PID指挥静默。资源重新分配进行中。",
		"PID倒在了战争的混乱中。其部队继续执行任务。",
		"确认阵亡：PID。正在接管剩余资产的操作控制权。",
		"PID的指挥完整性破碎。他们的战争努力通过我们继续。",
		"迷雾中的又一个幽灵：PID。让他们的部队成为我们的决心。",
		"传输丢失。PID已不复存在。我们继续战斗。",
		"PID在现实生活中怒退。你得到了他们的玩具。",
		"PID忘关炉子了。他们已经回家了。现在由你负责。",
		"PID遭受了突发性战略无能。资产重新分配。",
		"PID经历了自发性掀桌。他们的部队成了免费的不动产。",
		"PID最后的话：'看好了！'正在重新分配部队。",
		"PID达到了'不关我们事'的更高境界。你从这里接手。",
		"指挥代码：故障状态。PID的部队现由社区管理。",
		"我们已将PID晋升为战场观察员。非常非常远离战场。",
		"PID已被解除现役职务。部队已重新分配。",
		"指挥席位已空出：PID。资产已重新分配。",
		"PID不再向指挥部报告。正在直接控制其部队。",
		"PID的行动交接已完成。部队已重新分配。",
		"指挥连续性协议已激活。PID的资产现重新分配。",
		"PID已脱离。其部队现归幸存指挥体系。",
		"来自PID的控制信号丢失。正在整合其部队。",
		"PID已放弃控制。剩余资产已移交。"
	}

	--Media.DisplayMessage("Number of Bullshit Messages: " .. #surrenderMessages)
	Trigger.AfterDelay(DateTime.Seconds(5), function()
		if not MessageCooldown then
			MessageCooldown = true
			local messageIndex = Utils.RandomInteger(1, #surrenderMessages)
			local selectedMessage = surrenderMessages[messageIndex]
			local playerName = player.Name
			if selectedMessage ~= nil then
				local formattedMessage = string.gsub(selectedMessage, "PID", playerName)
				Media.DisplayMessage(formattedMessage, "High Command", player.Color)
			end
		end
	end)

	Trigger.AfterDelay(DateTime.Seconds(8), function()
		AssignToCoopPlayers(player.GetActors(), CoopPlayers)
		local estateCash = player.Cash + player.Resources
		local estateCashShare = estateCash / #CoopPlayers
		Utils.Do(CoopPlayers, function(player)
			player.Cash = player.Cash + estateCashShare
		end)
		MessageCooldown = false
	end)

	Trigger.AfterDelay(DateTime.Seconds(10), function()
		-- failsafe if reassignment wasn't possible
		local deathList = player.GetActors()
		Utils.Do(deathList, function(a)
			if a.Type ~= "player" and not a.IsDead and a.HasProperty("Health") then
				a.Kill()
			end
		end)
	end)
end

---@param unit actor
---@param produced boolean
---@param original? actor
local function OrderCopiedUnit(unit, produced, original, isAircraft)
	ScatterIfAble(unit)
	Trigger.AfterDelay(60, function()
		if unit.IsDead == true or unit.IsInWorld == false then
			return
		end
		local behavior
		if not produced then
			behavior = Utils.Random(SBehaviours)
		elseif produced then
			behavior = Utils.Random(PBehaviours)
		else
			return
		end
		local IsAggro = false
		if isAircraft == true then
			InitAttackAircraft(unit)
			return
		end
		Trigger.OnDamaged(unit,function(self, attacker, damage)
			if IsAggro == false then
				IsAggro = true
				unit.Stop()
				IdleHunt(unit)
			end
		end)
		Trigger.OnKilled(unit,function()
			Trigger.ClearAll(unit)
			return
		end)
		--Media.DisplayMessage("Random Behaviour: " .. behavior)
		if behavior == "normal" then
			if original and unit.HasProperty("Guard") then
				Trigger.OnIdle(unit, function()
					if original.IsDead then
						unit.Hunt()
						return
					end
					unit.Guard(original)
				end)
			end
			--Send the Unit to hunt if Guarding takes too long to prevent clogging the Map
			if produced then
				Trigger.AfterDelay(DateTime.Seconds(60), function()
					if unit.IsDead == false and unit.IsInWorld == true then
						unit.Stop()
						unit.Hunt()
						return
					end
				end)
			end
		end

		if behavior == "hunt" then
			IdleHunt(unit)
			return
		end

		if behavior == "wander" then
			StartWandering(unit)
		end

		if behavior == "idle" then
			StartIdling(unit)
		end
	end)
end

StartIdling = function(unit)
	local idletime = Utils.RandomInteger(20, 120)
	Trigger.AfterDelay(DateTime.Seconds(idletime), function()
		if unit.IsDead == false and unit.IsInWorld == true then
			ScatterIfAble(unit)
			StartIdling(unit)
		end
	end)
end

StartWandering = function(unit)
	local wandertarget = Map.RandomCell()
	local wandertime = Utils.RandomInteger(5, 30)
	Trigger.AfterDelay(DateTime.Seconds(wandertime), function()
		if unit.IsDead == false and unit.IsInWorld == true then
			unit.AttackMove(wandertarget, 5)
			StartWandering(unit)
		end
	end)
end

local function GetTeamPrimaryProducerOfType(buildingType)
	for _, player in ipairs(CoopPlayers) do
		local realProducers = player.GetActorsByType(buildingType)
		if #realProducers > 0 then
			local primaryProducers = Utils.Where(realProducers, function(rp)
				return rp.HasProperty("IsPrimaryBuilding") and rp.IsPrimaryBuilding
			end)
			if #primaryProducers > 0 then
				return primaryProducers[#primaryProducers]
			end
			return realProducers[#realProducers]
		end
	end

	return nil
end

---@param enemyPlayer player
local function MultiplyEnemyStartingUnits(enemyPlayer)
	local multiplier
	local playerCount = GetCoopPlayerCount()

	if Map.LobbyOption("enmp") == "999"  then
		multiplier = playerCount - 1
	else
		multiplier = tonumber(Map.LobbyOptionOrDefault("enmp", "0"))
	end

	if multiplier == 0 then
		return
	end

	local enemyUnits = enemyPlayer.GetGroundAttackers()

	local ValidAircrafts = {}

	if AirCraftMulti == "domulti" then
		local FoundAircrafts = {}
		ValidAircrafts = {"b2b","mig","suk","suk.upg","yak","p51","heli","u2","u2.killzone","smig","a10","a10.sw","a10.gau","a10.bomber","apch","orca","orcb","uav","rah","kiro","harr","scrn","venm","auro","pmak","beag","phan","kamv","shde","vert","mcor","disc","jack","stmr","torm","enrv","deva","pac","inva","mshp"}
		FoundAircrafts = enemyPlayer.GetActorsByTypes(ValidAircrafts)
		Utils.Do(FoundAircrafts,function(UID)
			table.insert(enemyUnits,UID)
		end)
	end

	Utils.Do(enemyUnits, function(original)
		local types = { }

		for _ = 1, multiplier do
			types[#types + 1] = original.Type
		end

		Reinforcements.Reinforce(enemyPlayer, types, { original.Location }, 0, function(copy)
			local isAircraft = Utils.Any(ValidAircrafts,function(CID)
				if copy.Type == CID then
					return true
				else
					return false
				end
			end)
			OrderCopiedUnit(copy, false, original, isAircraft)
		end)
	end)
end

---@param enemyPlayer player
local function MultiplyEnemyProduction(enemyPlayer)
	local multiplier
	local playerCount = GetCoopPlayerCount()

	if Map.LobbyOption("prmp") == "999" then
		multiplier = playerCount - 1
	else
		multiplier = 0 + tonumber(Map.LobbyOptionOrDefault("prmp", "0"))
	end

	if multiplier == 0 then
		return
	end

	Trigger.OnAnyProduction(function(_, unit)
		if unit.Owner ~= enemyPlayer then
			return
		end
		local AttackerFilter = unit.Owner.GetGroundAttackers()
		local ValidAircrafts = {}
		if AirCraftMulti == "domulti" then
			local FoundAircrafts = {}

			ValidAircrafts = {"b2b","mig","suk","suk.upg","yak","p51","heli","u2","u2.killzone","smig","a10","a10.sw","a10.gau","a10.bomber","apch","orca","orcb","uav","rah","kiro","harr","scrn","venm","auro","pmak","beag","phan","kamv","shde","vert","mcor","disc","jack","stmr","torm","enrv","deva","pac","inva","mshp"}
			FoundAircrafts = enemyPlayer.GetActorsByTypes(ValidAircrafts)

			Utils.Do(FoundAircrafts,function(UID)
				table.insert(AttackerFilter,UID)
			end)
		end

		Utils.Do(AttackerFilter, function(UID)
			if unit == UID then
				ScatterIfAble(unit)
				local types = { }

				for _ = 1, multiplier do
					types[#types + 1] = unit.Type
				end

				Reinforcements.Reinforce(unit.Owner, types, { unit.Location }, 0, function(copy)
					local original = unit

					local isAircraft = Utils.Any(ValidAircrafts,function(CID)
						if copy.Type == CID then
							return true
						else
							return false
						end
					end)

					if isAircraft == true then
						OrderCopiedUnit(copy, true, original, isAircraft)
					else
						OrderCopiedUnit(copy, true, original)
					end
				end)
				return
			end
		end)
	end)
end

local function SetExtraMines()
	if Map.LobbyOption("oremines") == "oreoff" then
		--Media.DisplayMessage("Extra Mines are turned off.")
		return
	end
	if Map.LobbyOption("oremines") == "oreon" or Map.LobbyOption("oremines") == "oreonupgrade" then
		local OreMineList = { ExtraMine1, ExtraMine2, ExtraMine3, ExtraMine4, ExtraMine5, ExtraMine6, ExtraMine7, ExtraMine8, ExtraMine9, ExtraMine10 }
		local GemMineList = { ExtraGemMine1, ExtraGemMine2, ExtraGemMine3, ExtraGemMine4, ExtraGemMine5, ExtraGemMine6, ExtraGemMine7, ExtraGemMine8, ExtraGemMine9, ExtraGemMine10, ExtraDiamondMine1, ExtraDiamondMine2, ExtraDiamondMine3, ExtraDiamondMine4, ExtraDiamondMine5, ExtraDiamondMine6, ExtraDiamondMine7, ExtraDiamondMine8, ExtraDiamondMine9, ExtraDiamondMine10 }
		local GreenBlossomList = { ExtraBlossom1, ExtraBlossom2, ExtraBlossom3, ExtraBlossom4, ExtraBlossom5, ExtraBlossom6, ExtraBlossom7, ExtraBlossom8, ExtraBlossom9, ExtraBlossom10 }
		local BlueBlossomList = { ExtraBlueBlossom1, ExtraBlueBlossom2, ExtraBlueBlossom3, ExtraBlueBlossom4, ExtraBlueBlossom5, ExtraBlueBlossom6, ExtraBlueBlossom7, ExtraBlueBlossom8, ExtraBlueBlossom9, ExtraBlueBlossom10 }

		Utils.Do(OreMineList, function(actor)
			if actor then
				Actor.Create("mine", true, { Location = actor.Location, Owner = Neutral })
				--Media.DisplayMessage("Extra Ore Mine created.")
			end
		end)
		Utils.Do(GemMineList, function(actor)
			if actor then
				Actor.Create("gmine", true, { Location = actor.Location, Owner = Neutral })
				--Media.DisplayMessage("Extra Gem Mine created.")
			end
		end)
		Utils.Do(GreenBlossomList, function(actor)
			if actor then
				Actor.Create("split2", true, { Location = actor.Location, Owner = Neutral })
			end
		end)
		Utils.Do(BlueBlossomList, function(actor)
			if actor then
				Actor.Create("splitblue", true, { Location = actor.Location, Owner = Neutral })
			end
		end)
	end
	if Map.LobbyOption("oremines") == "oreupgrade" or Map.LobbyOption("oremines") == "oreonupgrade" then
		Trigger.AfterDelay(2, function()
			local AllT1Spawners = {}
			AllT1Spawners = Neutral.GetActorsByTypes({"split2", "split3", "mine"})
			Utils.Do(AllT1Spawners,function(SID)
				local Spawnertype = SID.Type
				local Spawnerlocation = SID.Location
				if Spawnertype == "mine" then
					Spawnertype = "gmine"
				elseif Spawnertype == "split2" or Spawnertype == "split3" then
					Spawnertype = "splitblue"
				end
				SID.Destroy()
				Actor.Create(Spawnertype, true, { Location = Spawnerlocation, Owner = Neutral })
			end)
		end)
	end
	if Map.LobbyOption("oremines") == "orefinite" then
		Trigger.AfterDelay(2, function()
			local AllSpawners = {}
			AllSpawners = Neutral.GetActorsByTypes({"split2", "split3", "splitblue", "mine"})
			Utils.Do(AllSpawners,function(SID)
				SID.Destroy()
			end)
			Media.DisplayMessage("所有资源生成器已删除，祝你好运！")
		end)
	end
end

IncomeSharing = function()
	Utils.Do(CoopPlayers, function(PID)
		-- Handle 999% Shared: Send everything to everyone
		if IncomePercentage == 999 then
			if PID.Resources > 0 then
				Utils.Do(CoopPlayers,function(PID2)
					PID2.Cash = PID2.Cash + PID.Resources
				end)
				PID.Resources = 0
			end
		-- Handle 100/125/150%/175% Shared: Send everything to SharedBank (with 0/25/50%/75% extra per ally)
		elseif IncomePercentage >= 100 then
			local additionalPlayers = #CoopPlayers - 1
			local bonusPerPlayer = (IncomePercentage - 100) / 100
			local totalMultiplier = 1 + (bonusPerPlayer * additionalPlayers)
			local totalAmount = PID.Resources * totalMultiplier
			SharedBank = SharedBank + totalAmount
			PID.Resources = 0
		else
			-- Store resources in the buffer for non-100% sharing
			if PID.Resources > 0 then
				ResourceBuffer[PID] = ResourceBuffer[PID] + PID.Resources
				PID.Resources = 0  -- Ensure resources are fully moved to buffer
			end

			-- Convert Buffered Resources into Cash & SharedBank when threshold is met
			local shareThreshold = 1 + (IncomePercentage / 100)  -- Example: If IncomePercentage = 30, this would be 1.3

			while ResourceBuffer[PID] >= shareThreshold do
				-- Pay the player 1$ in cash
				PID.Cash = PID.Cash + 1

				-- Transfer the shared portion to SharedBank
				local shareAmount = shareThreshold - 1
				SharedBank = SharedBank + shareAmount

				-- Reduce buffer accordingly
				ResourceBuffer[PID] = ResourceBuffer[PID] - shareThreshold
			end
		end
	end)

	-- Distribute Shared Account Money when there's enough in SharedBank
	if SharedBank >= #CoopPlayers then
		local fullDollars = math.floor(SharedBank / #CoopPlayers)  -- Calculate the full dollars to distribute
		local remainder = SharedBank - (fullDollars * #CoopPlayers)  -- Calculate the remaining SharedBank value

		-- Distribute the full dollars to each player
		Utils.Do(CoopPlayers, function(PID)
			PID.Cash = PID.Cash + fullDollars
		end)

		-- Remaining SharedBank goes back to the SharedBank after distribution
		SharedBank = remainder
		--Media.DisplayMessage((fullDollars * #CoopPlayers) .. "$ distributed " .. remainder .. "$ left in Shared Account.")
	end

	-- Loop with a delay to keep running
	Trigger.AfterDelay(1, IncomeSharing)
end

EnemyVeterancy = function(mainEnemies)
	--Small delay for the Multiplicators
	Trigger.AfterDelay(5, function()
		local EnLevel = tonumber(Map.LobbyOption("enemyranks"))
		if EnLevel ~= 0 then
			--Level up all Starting Units
			Utils.Do(mainEnemies, function(EID)
				Utils.Do(EID.GetActors(), function(UID)
					if UID.HasProperty("CanGainLevel") == true then
						UID.GiveLevels(EnLevel, true)
					end
				end)
			end)
			--Level up all Produced Units
			Trigger.OnAnyProduction(function(producer, UID)
				Utils.Do(mainEnemies, function(EID)
					if UID.Owner == EID and UID.HasProperty("CanGainLevel") == true then
						if UID.Level == 0 then
							UID.GiveLevels(EnLevel, true)
						end
					end
				end)
			end)
			--Level up eventual Reinforcements with periodic Checks
			LateEnemyVeterancy(mainEnemies,EnLevel)
		end
	end)
end

LateEnemyVeterancy = function(mainEnemies, EnLevel)
	Utils.Do(mainEnemies, function(EID)
		Utils.Do(EID.GetActors(), function(UID)
			if UID.HasProperty("CanGainLevel") == true then
				if UID.Level == 0 then
					UID.GiveLevels(EnLevel, true)
				end
			end
		end)
	end)
	Trigger.AfterDelay(60, function()
		LateEnemyVeterancy(mainEnemies,EnLevel)
	end)
end

StartCashSpread = function(MinStartCash)
	if MinStartCash == nil then
		MinStartCash = 2500 --This should be enough for a power plant and a refinery for each player
	end
	local StartCash = MainPlayer.Cash / #CoopPlayers
	if StartCash < MinStartCash then
		StartCash = MinStartCash
	end
	Utils.Do(CoopPlayers, function(p)
		p.Cash = StartCash
	end)
end

CoopInit = function()
	SBehaviours = {}
	PBehaviours = {}

	AirCraftMulti = Map.LobbyOption("multiplyaircraft")

	local Pfollow = tonumber(Map.LobbyOption("pfollow"))
	local Phunt = tonumber(Map.LobbyOption("phunt"))
	local Pwander = tonumber(Map.LobbyOption("pwander"))
	local Pidle = tonumber(Map.LobbyOption("pidle"))

	local Sfollow = tonumber(Map.LobbyOption("sfollow"))
	local Shunt = tonumber(Map.LobbyOption("shunt"))
	local Swander = tonumber(Map.LobbyOption("swander"))
	local Sidle = tonumber(Map.LobbyOption("sidle"))

	for i = 1, Pfollow do
		table.insert(PBehaviours,"normal")
	end

	for i = 1, Phunt do
		table.insert(PBehaviours,"hunt")
	end

	for i = 1, Pwander do
		table.insert(PBehaviours,"wander")
	end

	for i = 1, Pidle do
		table.insert(PBehaviours,"idle")
	end

	for i = 1, Sfollow do
		table.insert(SBehaviours,"normal")
	end

	for i = 1, Shunt do
		table.insert(SBehaviours,"hunt")
	end

	for i = 1, Swander do
		table.insert(SBehaviours,"wander")
	end

	for i = 1, Sidle do
		table.insert(SBehaviours,"idle")
	end

	if #SBehaviours == 0 then
		SBehaviours = {"idle"}
	end

	if #PBehaviours == 0 then
		PBehaviours = {"idle"}
	end

	MainPlayer = SinglePlayerPlayer
	CoopPlayers = MissionPlayers

	local mainEnemies = MissionEnemies
	local baseSharingValue = Map.LobbyOption("basesharing")

	if baseSharingValue == "1" then
		McvPerPlayer = false
	else
		McvPerPlayer = true
	end

	-- delay by 1 tick to allow difficulty based removals to take effect
	Trigger.AfterDelay(1, function()
		GoodSpread()
	end)

	SyncObjectives()

	Trigger.AfterDelay(DateTime.Seconds(2), function()
		Utils.Do(mainEnemies, function(player)
			MultiplyEnemyProduction(player)
			MultiplyEnemyStartingUnits(player)
		end)

		IncomeshareLobbyoption = Map.LobbyOption("incomeshare")

		if MoneyShareOverride ~= nil then
			if IncomeshareLobbyoption == "999" and MoneyShareOverride == 100 then
				MoneyShareOverride = "999"
			end
			IncomeshareLobbyoption = MoneyShareOverride
		end

		IncomePercentage = tonumber(IncomeshareLobbyoption)

		if IncomePercentage ~= 0 and #CoopPlayers >= 2 then
			ResourceBuffer = {}

			Utils.Do(CoopPlayers, function(PID)
				ResourceBuffer[PID] = 0
			end)

			SharedBank = 0

			IncomeSharing()
		end

		SetExtraMines()
		originalLocation = CPos.New(3, 3)
		StartCoopBots()
		EnemyVeterancy(mainEnemies)
	end)
end

-------------------

IsBaseTransferActor = function(actor)
	return actor.HasProperty("StartBuildingRepairs") or IsHarvester(actor) or Utils.Any(WallTypes, function(t) return actor.Type == t end)
end

TransferBaseToPlayer = function(fromPlayer, toPlayer)
	Trigger.AfterDelay(1, function()
		local baseActors = Utils.Where(fromPlayer.GetActors(), function(a)
			return IsBaseTransferActor(a)
		end)
		Utils.Do(baseActors, function(a)
			a.Owner = toPlayer
		end)
		CACoopQueueSyncer()
	end)
end

TransferMcvsToPlayers = function()
	local mcvs = SinglePlayerPlayer.GetActorsByTypes(McvTypes)
	local toPlayers = GetMcvPlayers()
	Utils.Do(mcvs, function(mcv)
		mcv.Owner = toPlayers[1]
		if McvPerPlayer then
			Utils.Do(toPlayers, function(p)
				if p ~= toPlayers[1] then
					local copy = Actor.Create(mcv.Type, true, { Owner = p, Location = mcv.Location })
					ScatterIfAble(copy)
				end
			end)
		end
	end)
end

GetFirstActivePlayer = function()
	for _, p in ipairs(MissionPlayers) do
		if p.PlayerIsActive then
			return p
		end
	end
	return Neutral
end

GetMcvPlayers = function()
	if McvPerPlayer then
		return CoopPlayers
	else
		local firstActive = GetFirstActivePlayer()
		if firstActive then
			return { firstActive }
		else
			return { Neutral }
		end
	end
end

-- overrides the base campaign version
SetupRefAndSilosCaptureCredits = function(player)
	local silosAndRefineries = player.GetActorsByTypes(CashRewardOnCaptureTypes)
	Utils.Do(silosAndRefineries, function(a)
		Trigger.OnCapture(a, function(self, captor, oldOwner, newOwner)
			if IsMissionPlayer(newOwner) then
				Utils.Do(MissionPlayers, function(p)
					p.Cash = p.Cash + (CapturedCreditsAmount / #MissionPlayers)
				end)
			else
				newOwner.Cash = newOwner.Cash + CapturedCreditsAmount
			end
			Media.FloatingText("+$" .. CapturedCreditsAmount, self.CenterPosition, 30, newOwner.Color)
		end)
	end)
end
