function onUse(cid, item, frompos, item2, topos)

	if item.uid == 7104 then
 	queststatus = getPlayerStorageValue(cid,98779)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você completou a water valley quest. parabens.")
 	doPlayerAddItem(cid,11442,500)
        doPlayerAddItem(cid,2160,100)
 	doTeleportThing(cid,{x=683, y=1321, z=7})
        setPlayerStorageValue(cid,98779,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Voce Ja Concluiu A Quest.")
 	end
	else
	return 0
	end

	return 1
	end 