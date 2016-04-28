function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2111 then
 	queststatus = getPlayerStorageValue(cid,98658)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você completou a water quest..")
 	doPlayerAddItem(cid,11442,10)
        doPlayerAddItem(cid,2160,1)
 	doTeleportThing(cid,{x=839, y=1024, z=7})
        setPlayerStorageValue(cid,98659,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Voce Ja Concluiu A Quest.")
 	end
	else
	return 0
	end

	return 1
	end 