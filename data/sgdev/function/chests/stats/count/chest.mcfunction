execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/stats/count/chest

#called with storage sgdev:stats
#$(ChunkIndex) is the chunk array index that is currently being counted
#$(ChestIndex) is the chest array index within the above chunk that is currently being counted

$data modify storage sgdev:stats Quality set from storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Quality
function sgdev:chests/stats/count/quality with storage sgdev:stats

#recursive call, count all chests within chunk
scoreboard players remove $ChestIndex sgdev.stats 1
execute store result storage sgdev:stats ChestIndex int 1 run scoreboard players get $ChestIndex sgdev.stats
execute unless score $ChestIndex sgdev.stats matches ..-1 run function sgdev:chests/stats/count/chest with storage sgdev:stats