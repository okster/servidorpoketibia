function onTimer()

if #getPlayersInArea(torneio.area) > 1 then
doBroadcastMessage("O torneio, desta vez não teve vencedor, tentar na próxima vez!") return true end

for _, pid in ipairs(getPlayersInArea(torneio.waitArea)) do
doTeleportThing(pid, torneio.tournamentFight)
doPlayerSendTextMessage(pid, 21, "O torneio começou e que vença o melhor guerreiro! haha.")
end
return true
end