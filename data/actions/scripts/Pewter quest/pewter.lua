function onUse(cid, item, frompos, item2, topos)

	if item.uid == 20000 then
 	queststatus = getPlayerStorageValue(cid,98780)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você completou a pewter quest..")
 	doPlayerAddItem(cid,11445,100)
        doPlayerAddItem(cid,2160,20)
        setPlayerStorageValue(cid,98780,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Voce Ja Concluiu A Quest.")
 	end
	else
	return 0
	end

	return 1
	end 