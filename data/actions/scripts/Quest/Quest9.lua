-- Script Made By: Sonkis (Gabriel Lisboa)
-- Start Config --
local topos = {x=1141, y=1091, z=8} -- Posição para onde o player será teleportado.
-- End Config --

function onUse(cid)
 if doTeleportThing(cid, topos) then
doSendMagicEffect(getThingPos(cid), 162)
end
end