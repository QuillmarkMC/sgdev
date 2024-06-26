execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/stats/count/quality

#called with storage sgdev:stats
#$(Quality) is the quality of the chest at $(ChunkIndex) and $(ChestIndex), to be counted

$scoreboard players add $$(Quality) sgdev.stats 1