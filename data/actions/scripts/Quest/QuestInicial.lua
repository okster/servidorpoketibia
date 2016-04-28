function onUse(cid, item, frompos, item2, topos)

	if item.uid == 10011 then
 	queststatus = getPlayerStorageValue(cid,987551)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você completou a quest Inicial..")
 	doPlayerAddItem(cid,2160,100)
        doPlayerAddItem(cid,11454,2)
 	doTeleportThing(cid,{x=1054, y=1050, z=7})
        setPlayerStorageValue(cid,987551,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Voce Ja Concluiu A Quest.")
 	end
	else
	return 0
	end

	return 1
	end 