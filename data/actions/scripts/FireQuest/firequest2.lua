function onUse(cid, item, frompos, item2, topos)

	if item.uid == 7103 then
 	queststatus = getPlayerStorageValue(cid,98758)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você completou a fire valley quest..")
 	doPlayerAddItem(cid,11447,500)
        doPlayerAddItem(cid,2160,100)
 	doTeleportThing(cid,{x=1125, y=745, z=7})
        setPlayerStorageValue(cid,98758,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Voce Ja Concluiu A Quest.")
 	end
	else
	return 0
	end

	return 1
	end 