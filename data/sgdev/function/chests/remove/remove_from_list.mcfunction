execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/remove/remove_from_list
#called with storage sgdev:array
$data remove storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)]

#check if chunk is empty after removing chest, if so delete chunk from storage
$execute store result score $TempChunkCheck sgdev.chestVar run data get storage sg:chests Chunks[$(ChunkIndex)].Chests
$execute if score $TempChunkCheck sgdev.chestVar matches 0 run data remove storage sg:chests Chunks[$(ChunkIndex)]

execute at @s if block ~ ~ ~ chest run playsound block.wood.break block @a ~ ~ ~ 1 0.8
execute at @s if block ~ ~ ~ chest run setblock ~ ~ ~ air

function sgdev:chests/remove/output/success with storage sgdev:click Chest