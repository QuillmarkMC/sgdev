execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/modify/remove_from_list

# @s = marker at chest location
#called with storage sgdev:array
$data remove storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)]

#check if chunk is empty after removing chest, if so delete chunk from storage
$execute store result score $TempChunkCheck sgdev.chestVar run data get storage sg:chests Chunks[$(ChunkIndex)].Chests
$execute if score $TempChunkCheck sgdev.chestVar matches 0 run data remove storage sg:chests Chunks[$(ChunkIndex)]

execute at @s if block ~ ~ ~ chest run playsound block.wood.break block @a ~ ~ ~ 1 0.8
execute at @s if block ~ ~ ~ chest run setblock ~ ~ ~ air

execute if score $Glowing sgdev.var matches 1 at @s run kill @e[type=#sgdev:glowing,tag=sgdev.GlowingChest,limit=2,sort=nearest]

function sgdev:chests/modify/output/remove_success with storage sgdev:click Chest