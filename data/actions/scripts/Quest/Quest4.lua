-- Script Made By: Sonkis (Gabriel Lisboa)
-- Start Config --
local topos = {x=1758, y=1737, z=3} -- Posição para onde o player será teleportado.
-- End Config --

function onUse(cid)
 if doTeleportThing(cid, topos) then
doSendMagicEffect(getThingPos(cid), 2)
end
end