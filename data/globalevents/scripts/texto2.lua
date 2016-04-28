local config = {
positions = {
["Q-Inicial"] = { x = 428, y = 605, z = 7 },
["BlackArticuno"] = { x = 453, y = 605, z = 7 },
["BlackCelebi"] = { x = 457, y = 605, z = 7 },
["ShinyLugia"] = { x = 445, y = 608, z = 7 },
["B11"] = { x = 440, y = 609, z = 7 },
["B12-B13"] = { x = 440, y = 611, z = 7 },
["Zekrom"] = { x = 1079, y = 946, z = 10 },
["Reshiram"] = { x = 1077, y = 946, z = 10 },
["Quests"] = { x = 466, y = 605, z = 7 },
["Hunts"] = { x = 469, y = 605, z = 7 },
["B14"] = { x = 440, y = 613, z = 7 },
["B15"] = { x = 440, y = 615, z = 7 },
["B16"] = { x = 440, y = 617, z = 7 },
["B17"] = { x = 438, y = 617, z = 7 },
["B18"] = { x = 436, y = 617, z = 7 },
["B19"] = { x = 434, y = 617, z = 7 },
["B20"] = { x = 432, y = 617, z = 7 },
["B21"] = { x = 430, y = 617, z = 7 },
["B22"] = { x = 428, y = 617, z = 7 },
["Aria Vip"] = { x = 1051, y = 1044, z = 7 },
["Aria Vip"] = { x = 1052, y = 1044, z = 7 },
}
}

function onThink(cid, interval, lastExecution)
for text, pos in pairs(config.positions) do
doSendAnimatedText(pos, text, math.random(1, 255))
end

return TRUE
end