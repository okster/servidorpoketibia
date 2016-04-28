-- [( Script created by Doidin for XTibia.com )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Nunca abra uma box se tiver 6 pokes na bag, não nos responsabilizamos por items perdidos no server.",
"Client Do Servidor :   http://www.mediafire.com/download/xk9z5c4s4i4k27q/Poke_Anonymous_2.5.rar",
"Diga !save para Salvar seu char para não haver perdas.",
"Poke Anonymous BETA 1.0 .",
"NPC Mark Vendendo Scarab Coins Por 50 TD Promoção Do Dia de Hoje!",
"Fique por dentro de tudo que acontece no Serve através da página https://www.facebook.com/pages/Poke-Anonymous/525787050906217?ref=bookmarks",
"Entre No Nosso Grupo: https://www.facebook.com/groups/1668314636730879/?ref=bookmarks",
"Client Do Servidor :   http://www.mediafire.com/download/xk9z5c4s4i4k27q/Poke_Anonymous_2.5.rar",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22)
return TRUE
end