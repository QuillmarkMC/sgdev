execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/item_frame/summon_marker

# @s = item frame
#called with data entity @s Item.components.minecraft:custom_data
#when a player places a custom item frame, spawn a marker at the adjusted position to actually perform logic
$execute if entity @s[tag=RemoveChestMarker] run summon marker ~ ~ ~ {Tags:["RemoveChestMarker"],data:{Owner:$(Owner)}}
$execute if entity @s[tag=SpawnChanceChestMarker] run summon marker ~ ~ ~ {Tags:["SpawnChanceChestMarker"],data:{Owner:$(Owner)}}
$execute if entity @s[tag=NewChestMarker] run summon marker ~ ~ ~ {Tags:["NewChestMarker"],data:{Owner:$(Owner),Quality:$(Quality),SpawnChance:$(SpawnChance)d}}

kill @s