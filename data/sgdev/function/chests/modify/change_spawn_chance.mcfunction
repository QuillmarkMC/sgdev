execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/modify/change_spawn_chance

# @s = marker at chest location
#called with storage sgdev:array
$data modify storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].SpawnChance set from storage sgdev:click Chest.SpawnChance
data modify entity @n[type=text_display,tag=sgdev.GlowingChest] text set string storage sgdev:click Chest.SpawnChance
#execute if score $Glowing sgdev.var matches 1 as @n[type=text_display,tag=sgdev.GlowingChest] run function sgdev:chests/modify/glow/text_display with storage sgdev:click Chest

function sgdev:chests/modify/output/spawn_chance_success with storage sgdev:click Chest