local s = {
--[action id] = {pos de volta}
[33691] = {x=851,y=400,z=6}, -- Cinnabar
[33692] = {x=718,y=851,z=6}, -- pewter
[33693] = {x=1061,y=906,z=7}, -- cerulean
[33694] = {x=1053,y=1050,z=7}, -- saffron
[33695] = {x=1074,y=1238,z=6}, -- vermillion
[33696] = {x=1213,y=1325,z=7}, -- fuchsia
[33697] = {x=704,y=1089,z=7}, -- viridian
[33698] = {x=862,y=1100,z=6}, -- celadon
[33699] = {x=1200,y=1045,z=7}, -- Lavender
[33700] = {x=1429,y=1599,z=6}, -- Snow City
[33701] = {x=547,y=676,z=7}, -- Golden Arena
}

local b = {
--[action id] = {{pos para onde ir}, {pos de volta}},
[33702] = {{x=907,y=1086,z=13}, {x=985,y=1083,z=13}}, -- Clan Psycraft
[33703] = {{x=862,y=1086,z=13}, {x=982,y=1083,z=13}}, -- Clan Orebound
[33704] = {{x=820,y=1086,z=13}, {x=979,y=1083,z=13}}, -- Clan Wingeon
[33705] = {{x=779,y=1085,z=13}, {x=976,y=1083,z=13}}, -- Clan Naturia
[33706] = {{x=737,y=1085,z=13}, {x=973,y=1083,z=13}}, -- Clan Seavel
[33707] = {{x=697,y=1085,z=13}, {x=970,y=1083,z=13}}, -- Clan Gardestrike
[33708] = {{x=656,y=1085,z=13}, {x=967,y=1083,z=13}}, -- Clan Malefic
[33709] = {{x=616,y=1085,z=13}, {x=964,y=1083,z=13}}, -- Clan Raibolt
[33710] = {{x=575,y=1085,z=13}, {x=961,y=1083,z=13}}, -- Clan Volcanic
}

function onStepIn(cid, item, pos)
if isSummon(cid) then
return false
end
--
local posi = {x=973, y=1066, z=13} --posi�ao do Trade Center...
local pos = s[item.actionid]
local storage = 171877 
--
if b[item.actionid] then
   pos = b[item.actionid][2]
   posi = b[item.actionid][1] 
   storage = 171878
end
setPlayerStorageValue(cid, storage, "/"..pos.x..";"..pos.y..";"..pos.z.."/")
--
if #getCreatureSummons(cid) >= 1 then
   for i = 1, #getCreatureSummons(cid) do
       doTeleportThing(getCreatureSummons(cid)[i], {x=posi.x - 1, y=posi.y, z=posi.z}, false)
   end
end 
doTeleportThing(cid, {x=posi.x, y=posi.y, z=posi.z}, false)  
return true
end