execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/stats/count/chunk

#called with storage sgdev:stats
#$(ChunkIndex) is the chunk array index that is currently being counted

$execute store result score $ChestIndex sgdev.stats run data get storage sg:chests Chunks[$(ChunkIndex)].Chests
scoreboard players remove $ChestIndex sgdev.stats 1
execute store result storage sgdev:stats ChestIndex int 1 run scoreboard players get $ChestIndex sgdev.stats

function sgdev:chests/stats/count/chest with storage sgdev:stats

#recursive call, count all chunks
scoreboard players remove $ChunkIndex sgdev.stats 1
execute store result storage sgdev:stats ChunkIndex int 1 run scoreboard players get $ChunkIndex sgdev.stats
execute unless score $ChunkIndex sgdev.stats matches ..-1 run function sgdev:chests/stats/count/chunk with storage sgdev:stats