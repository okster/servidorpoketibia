local starterpokes = {
["Totodile"] = {x = 53, y = 70, z = 7},
["Chikorita"] = {x = 51, y = 70, z = 7},
["Cyndaquil"] = {x = 49, y = 70, z = 7},
["Charmander"] = {x = 1037, y = 1141, z = 6},
["Bulbasaur"] = {x = 1039, y = 1141, z = 6},
["Squirtle"] = {x = 1041, y = 1141, z = 6},
}

local btype = "normal"

function onUse(cid, item, frompos, item2, topos)

    if getPlayerLevel(cid) > 15 then   
    return true
    end

    local pokemon = ""

    for a, b in pairs (starterpokes) do
        if isPosEqualPos(topos, b) then
            pokemon = a
        end
    end
    if pokemon == "" then return true end
    

    doPlayerSendTextMessage(cid, 27, "You got your first pokemon! You also received some pokeballs to help you in your way.")
    doPlayerSendTextMessage(cid, 27, "Don't forget to use your pokedex on every undiscovered pokemon!")

    addPokeToPlayer(cid, pokemon, 0, nil, btype, true)
    doPlayerAddItem(cid, 2394, 20)
    doPlayerAddItem(cid, 2160, 2)
    doPlayerAddLevel(cid, 4)

    doSendMagicEffect(getThingPos(cid), 29)
    doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
    doSendMagicEffect(getThingPos(cid), 27)
    doSendMagicEffect(getThingPos(cid), 29)
    

return TRUE
end