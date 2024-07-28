execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/glow/loop/chunk

#called with storage sgdev:glow
#$(ChunkIndex) is the chunk array index that is currently being counted

$execute store result score $ChestIndex sgdev.glow run data get storage sg:chests Chunks[$(ChunkIndex)].Chests
scoreboard players remove $ChestIndex sgdev.glow 1
execute store result storage sgdev:glow ChestIndex int 1 run scoreboard players get $ChestIndex sgdev.glow

function sgdev:chests/glow/loop/recursive/load_storage with storage sgdev:glow
