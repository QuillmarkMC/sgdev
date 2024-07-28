execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/glow/loop/chest

#called with storage sgdev:glow
#$(ChunkIndex) is the chunk array index that is currently being counted
#$(ChestIndex) is the chest array index within the above chunk that is currently being counted

$data modify storage sgdev:glow xyz set from storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].xyz
$data modify storage sgdev:glow Quality set from storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Quality
execute if score $Glowing sgdev.var matches 1 run function sgdev:chests/glow/loop/spawn with storage sgdev:glow
execute if score $Glowing sgdev.var matches -1 run function sgdev:chests/glow/loop/kill with storage sgdev:glow

#recursive call, count all chests within chunk
scoreboard players remove $ChestIndex sgdev.glow 1
execute store result storage sgdev:glow ChestIndex int 1 run scoreboard players get $ChestIndex sgdev.glow
execute unless score $ChestIndex sgdev.glow matches ..-1 run function sgdev:chests/glow/loop/chest with storage sgdev:glow
execute if score $ChestIndex sgdev.glow matches ..-1 run function sgdev:chests/glow/loop/recursive/chunk