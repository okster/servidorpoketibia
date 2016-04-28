function onUse(cid, item, frompos, item2, topos)

	if item.uid == 20006 then
 	queststatus = getPlayerStorageValue(cid,98770)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você completou pokeball quest.")
 	doPlayerAddItem(cid,2394,20)
        doPlayerAddItem(cid,2391,10)
        doPlayerAddItem(cid,2393,5)
        doPlayerAddItem(cid,2392,1)
 	doTeleportThing(cid,{x=1061, y=906, z=7})
        setPlayerStorageValue(cid,98770,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Voce Ja Concluiu A Quest.")
 	end
	else
	return 0
	end

	return 1
	end 