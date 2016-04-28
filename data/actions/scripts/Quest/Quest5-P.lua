function onUse(cid, item, frompos, item2, topos)

	if item.uid == 10009 then
 	queststatus = getPlayerStorageValue(cid,987583)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você completou a box 9..")
 	doPlayerAddItem(cid,2160,400)
        doPlayerAddItem(cid,13196,1)
        doPlayerAddItem(cid, 13215, 2)
 	doTeleportThing(cid,{x=1054, y=1050, z=7})
        setPlayerStorageValue(cid,987583,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Voce Ja Concluiu A Quest.")
 	end
	else
	return 0
	end

	return 1
	end 