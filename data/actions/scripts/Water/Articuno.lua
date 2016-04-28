function onUse(cid, item, frompos, item2, topos)

	if item.uid == 7999 then
 	queststatus = getPlayerStorageValue(cid,98758)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você completou a Articuno quest..")
 	doPlayerAddItem(cid,13100,1)
        doPlayerAddItem(cid,2160,100)
 	doTeleportThing(cid,{x=736, y=955, z=8})
        setPlayerStorageValue(cid,98758,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Voce Ja Concluiu A Quest.")
 	end
	else
	return 0
	end

	return 1
	end 