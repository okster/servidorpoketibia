--local toloot = {11441, 11441, 11443, 11444, 11445, 11446, 11447, 11448, 11449,11450, 11451, 11452, 11453, 11454, 12618, 12232, 12244, 12200} -- PREFERENCIAL - SE QUISER APENAS COM ALGUNS ITENS
function onUse(cid, item, frompos, item2, topos)
if getItemAttribute(item.uid, "corpseowner") ~= cid then
doPlayerSendCancel(cid, "You're not the owner.")
return true
end
local items = {}
for x=0, (getContainerSize(item.uid)) do
local itens = getContainerItem(item.uid, x)
--if isInArray(toloot, itens.itemid) then
table.insert(items, {i=itens.itemid, q=itens.type})
doRemoveItem(itens.uid)
--break
--end
end
for y=1, #items do
doPlayerAddItemStacking(cid, items[y].i, items[y].q)
doPlayerSendTextMessage(cid, 20, "Looted "..items[y].q.."x "..getItemNameById(items[y].i)..".")
end
if #items > 0 then
return true
else
return false
end
end