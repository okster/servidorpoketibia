function onUse(cid, item, frompos, item2, topos)

	if not isCreature(item2.uid) or not isSummon(item2.uid) then
		doPlayerSendCancel(cid, "You can only give this candy to trainers' pokemons.")
	return true
	end

	if getCreatureHealth(item2.uid) == 0 then return true end

	local pb = getPlayerSlotItem(getCreatureMaster(item2.uid), 8)

	if getLevel(item2.uid) >= 100 then
		doPlayerSendCancel(cid, "Your pokemon is already at maximum level.")
	return true
	end

	if getLevel(item2.uid) == getItemAttribute(pb.uid, "rarecandy") then
		doPlayerSendCancel(cid, "A pokemon can't level up two times in a row by a rare candy.")
	return true
	end

	doPlayerSendTextMessage(cid, 27, "You gave a rare candy to "..getPokeName(item2.uid)..".")

	doCreatureSay(cid, getPokeName(item2.uid)..", take this candy!", TALKTYPE_SAY)
	doRemoveItem(item.uid, 1)


	local level = getItemAttribute(pb.uid, "level")
	local exp = getItemAttribute(pb.uid, "exp")
	local neededexp = getItemAttribute(pb.uid, "nextlevelexp")

	if getHappiness(item2.uid) < 50 then
		doSendMagicEffect(getThingPos(item2.uid), 168)
	return true
	end

	doCreatureSay(item2.uid, "Yum.", TALKTYPE_ORANGE_1)
	doItemSetAttribute(pb.uid, "rarecandy", level + 1)
	doItemSetAttribute(pb.uid, "exp", exp + neededexp)
	doPlayerSendTextMessage(getCreatureMaster(item2.uid), 27, "Your "..getPokeName(item2.uid).." has eaten a rare candy!")
	doSendFlareEffect(getThingPos(item2.uid))
	doSendAnimatedText(getThingPos(item2.uid), "Level up!", 215)
	adjustPokemonLevel(pb.uid, getCreatureMaster(item2.uid), pb.itemid, true)

return true
end
	