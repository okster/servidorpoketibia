function onSay(cid, words, param)
if(doPlayerRemoveItem(cid, 2159, 100) == true) then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Parabéns!! Agora você é um Jogador VIP.")
doPlayerAddPremiumDays(cid, 7)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Vocé Precisa De 100 Scarab Coins Pra SE TORNAR Vip.")
end
return TRUE
end

