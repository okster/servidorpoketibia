function onUse(cid, item, frompos, item2, topos)

	if item.uid == 7105 then
 	queststatus = getPlayerStorageValue(cid,98778)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você completou a leaf valley quest..")
 	doPlayerAddItem(cid,11441,500)
        doPlayerAddItem(cid,2160,100)
 	doTeleportThing(cid,{x=512, y=1127, z=7})
        setPlayerStorageValue(cid,98778,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Voce Ja Concluiu A Quest.")
 	end
	else
	return 0
	end

	return 1
	end 