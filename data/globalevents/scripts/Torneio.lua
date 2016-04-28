-- [( Script created by Doidin for XTibia.com )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Torneio Começa As 22:30, Por favor se Quiser participar Fale com o NPC Tournament No CP de Saffron.",
"Torneio Começa As 22:30, Por favor se Quiser participar Fale com o NPC Tournament No CP de Saffron.",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22)
return TRUE
end