local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 
         posInicial = nil
         posFinal = nil
         npcHandler:onCreatureDisappear(cid) 
end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
function creatureSayCallback(cid, type, msg)
if(not npcHandler:isFocused(cid)) then
return false
end
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
---------------------- CONFIGS --------------------------------------
local posis = {
--[pos do npc] = {pos inicial, pos final},
[{x = 847, y = 1098, z = 7}] = {posIni = {x = 846, y = 1098, z = 7}, posFinal = {x = 851, y = 1191, z = 7}}, 
[{x = 850, y = 1192, z = 7}] = {posIni = {x = 853, y = 1191, z = 7}, posFinal = {x = 848, y = 1101, z = 7}},  
}

for npcPos, pos in pairs(posis) do
    if isPosEqualPos(getThingPos(getNpcCid()), npcPos) then 
       posInicial = pos.posIni   
       posFinal = pos.posFinal
       break
    end
end
if not posInicial then selfSay("A error has occored!", cid) print("A error has occored, npc travel aren't in the correct place!") return false end

local outfit = getPlayerSex(cid) == 0 and {lookType = 1440} or {lookType = 1439} --outfit q o player vai ganhar, a 1* eh female e a 2* eh male
local msg = msg:lower()
------------------------------------------------------------------------------
if msgcontains(msg, 'travel') then
   --------------------------------------------------------------------
   local storages = {17000, 63215, 17001, 13008, 5700}
   for s = 1, #storages do
       if getPlayerStorageValue(cid, storages[s]) >= 1 then
          return selfSay("You can't do that while is Flying, Riding, Surfing, Diving or mount a bike!", cid) and true 
       end
   end
   if #getCreatureSummons(cid) >= 1 then
      return selfSay("Return your pokemon!", cid) and true
   end
   --------------------------------------------------------------------------------------------------------------------------
   selfSay("voce tem certesa que quer viajar?", cid)
   talkState[talkUser] = 1
   return true
elseif (msgcontains(msg, 'yes') or msgcontains(msg, 'Yes')) and talkState[talkUser] == 1 then
   selfSay("Ok then, good travel!", cid)
   doTeleportThing(cid, posInicial, false)
   doSendMagicEffect(getThingPos(cid), 21)
   mayNotMove(cid, true)
   setPlayerStorageValue(cid, 75846, 1)
   doSetCreatureOutfit(cid, outfit, -1)
   moveTravel(cid, posFinal)
   talkState[talkUser] = 0
   return true
end
return true
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())