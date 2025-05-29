execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/new/create/update_chest
# @s = marker at location of chest

#called with storage sgdev:click Chest
$data modify storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)] set value {xyz:"$(xyz)",Quality:"$(Quality)",PlacedBy:"$(PlacedBy)",SpawnChance:$(SpawnChance)d,Facing:"$(Facing)"}

$tellraw @a[tag=ChestClicker,limit=1] [{"text":"[!] ","bold":true,"color":"green"},{"translate":"sgdev.chests.new_update",color:white,bold:false,with:[{"text":"$(Quality)"},{"text":"$(xyz)"}]}]

execute if score $Glowing sgdev.var matches 1 run function sgdev:chests/new/create/glow/respawn with storage sgdev:click Chest
execute if score @a[tag=ChestClicker,limit=1] sgdev.chest_place matches 1 run function sgdev:chests/new/create/physical_chest with storage sgdev:click Chest
