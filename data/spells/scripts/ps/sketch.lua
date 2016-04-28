elseif spell == "Sketch 1" then
  if isSummon(cid) and isPlayer(getCreatureMaster(cid)) then
    setPlayerStorageValue(cid, 18554, 1)
    addEvent(function() if isCreature(cid) then setPlayerStorageValue(cid, 18554, -1) end end, 3000)
    else
local spells = {"Psy Pulse", "Shadow Ball", "Thunder Bolt", "Ember", "Rock Throw", "Razor Leaf", "Bubbles", "Ice Shards", "Egg Bomb", "Poison Bomb"}

    local random = math.random(1, #spells)

	local randommove = spells[random]
	local pos = getThingPosWithDebug(cid)
	pos.y = pos.y - 1

	doSendMagicEffect(pos, 0)
	
	local function doMetronome(cid, skill)
	if not isCreature(cid) then return true end
       docastspell(cid, skill)
    end
    
    addEvent(doMetronome, 200, cid, randommove)

   end
elseif spell == "Sketch 2" then
    if isSummon(cid) and isPlayer(getCreatureMaster(cid)) then
    setPlayerStorageValue(cid, 18554, 2)
    addEvent(function() if isCreature(cid) then setPlayerStorageValue(cid, 18554, -1) end end, 3000)
    else
local spells = {"Mud Bomb", "Cyber Pulse", "Dark Pulse", "Rock Slide", "Magical Leaf", "Fireball", "Waterball", "Feather Dance"}

    local random = math.random(1, #spells)

	local randommove = spells[random]
	local pos = getThingPosWithDebug(cid)
	pos.y = pos.y - 1

	doSendMagicEffect(pos, 0)
	
	local function doMetronome(cid, skill)
	if not isCreature(cid) then return true end
       docastspell(cid, skill)
    end
    
    addEvent(doMetronome, 200, cid, randommove)
end
elseif spell == "Sketch 3" then
  if isSummon(cid) and isPlayer(getCreatureMaster(cid)) then
    setPlayerStorageValue(cid, 18554, 3)
    addEvent(function() if isCreature(cid) then setPlayerStorageValue(cid, 18554, -1) end end, 3000)
    else
local spells = {"Poison Gas", "Earthquake", "Petal Tornado", "Electro Field", "Flame Circle"}

    local random = math.random(1, #spells)

	local randommove = spells[random]
	local pos = getThingPosWithDebug(cid)
	pos.y = pos.y - 1

	doSendMagicEffect(pos, 0)
	
	local function doMetronome(cid, skill)
	if not isCreature(cid) then return true end
       docastspell(cid, skill)
    end
    
    addEvent(doMetronome, 200, cid, randommove)
end
elseif spell == "Sketch 4" then
  if isSummon(cid) and isPlayer(getCreatureMaster(cid)) then
    setPlayerStorageValue(cid, 18554, 4)
    addEvent(function() if isCreature(cid) then setPlayerStorageValue(cid, 18554, -1) end end, 3000)
    else
local spells = {"Thunder", "Night Slash", "Confusion", "Air Slash", "Confusion", "Night Shade"}

    local random = math.random(1, #spells)

	local randommove = spells[random]
	local pos = getThingPosWithDebug(cid)
	pos.y = pos.y - 1

	doSendMagicEffect(pos, 0)
	
	local function doMetronome(cid, skill)
	if not isCreature(cid) then return true end
       docastspell(cid, skill)
    end
    
    addEvent(doMetronome, 200, cid, randommove)
end
elseif spell == "Sketch 5" then
  if isSummon(cid) and isPlayer(getCreatureMaster(cid)) then
    setPlayerStorageValue(cid, 18554, 5)
    addEvent(function() if isCreature(cid) then setPlayerStorageValue(cid, 18554, -1) end end, 3000)
    else
local spells = {"Solar Beam", "Bullet Seed", "Raging Blast", "Fire Blast", "Bubble Blast", "Hydro Cannon", "Pin Missile"}

    local random = math.random(1, #spells)

	local randommove = spells[random]
	local pos = getThingPosWithDebug(cid)
	pos.y = pos.y - 1

	doSendMagicEffect(pos, 0)
	
	local function doMetronome(cid, skill)
	if not isCreature(cid) then return true end
       docastspell(cid, skill)
    end
    
    addEvent(doMetronome, 200, cid, randommove)
end
	elseif spell == "Sketch 6" then
  if isSummon(cid) and isPlayer(getCreatureMaster(cid)) then
    setPlayerStorageValue(cid, 18554, 6)
    addEvent(function() if isCreature(cid) then setPlayerStorageValue(cid, 18554, -1) end end, 3000)
    else
local spells = {"Shockwave", "Petal Dance", "Hyper Beam", "Zap Cannon", "Aurora Beam", "Ice Beam", "Ground Chop"}

    local random = math.random(1, #spells)

	local randommove = spells[random]
	local pos = getThingPosWithDebug(cid)
	pos.y = pos.y - 1

	doSendMagicEffect(pos, 0)
	
	local function doMetronome(cid, skill)
	if not isCreature(cid) then return true end
       docastspell(cid, skill)
    end
    
    addEvent(doMetronome, 200, cid, randommove)
end
elseif spell == "Sketch 7" then
  if isSummon(cid) and isPlayer(getCreatureMaster(cid)) then
    setPlayerStorageValue(cid, 18554, 7)
    addEvent(function() if isCreature(cid) then setPlayerStorageValue(cid, 18554, -1) end end, 3000)
    else
local spells = {"Fear", "Sunny Day", "Scary Face", "Skull Bash", "Cotton Spore", "Sleep Powder"}

    local random = math.random(1, #spells)

	local randommove = spells[random]
	local pos = getThingPosWithDebug(cid)
	pos.y = pos.y - 1

	doSendMagicEffect(pos, 0)
	
	local function doMetronome(cid, skill)
	if not isCreature(cid) then return true end
       docastspell(cid, skill)
    end
    
    addEvent(doMetronome, 200, cid, randommove)
end
elseif spell == "Sketch 8" then
  if isSummon(cid) and isPlayer(getCreatureMaster(cid)) then
    setPlayerStorageValue(cid, 18554, 8)
    addEvent(function() if isCreature(cid) then setPlayerStorageValue(cid, 18554, -1) end end, 3000)
    else
local spells = {"Reflect", "Charm", "Agility", "Safeguard", "Synthesis", "Emergency Call", "Healarea", "Sing"}

    local random = math.random(1, #spells)

	local randommove = spells[random]
	local pos = getThingPosWithDebug(cid)
	pos.y = pos.y - 1

	doSendMagicEffect(pos, 0)
	
	local function doMetronome(cid, skill)
	if not isCreature(cid) then return true end
       docastspell(cid, skill)
    end
    
    addEvent(doMetronome, 200, cid, randommove)
end 