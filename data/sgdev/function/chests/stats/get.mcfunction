execute if score $Debug sgdev.var matches 1.. run say sgdev:chests/stats/get
scoreboard players reset @s sgdev.stats

#reset previous count
scoreboard players set $common sgdev.stats 0
scoreboard players set $uncommon sgdev.stats 0
scoreboard players set $rare sgdev.stats 0
scoreboard players set $epic sgdev.stats 0
scoreboard players set $legendary sgdev.stats 0
scoreboard players set $cornucopia sgdev.stats 0

#get number of chunks, use it as index to loop through chunk array and get all chests per chunk
execute store result score $Chunks sgdev.stats run data get storage sg:chests Chunks
scoreboard players operation $ChunkIndex sgdev.stats = $Chunks sgdev.stats
scoreboard players remove $ChunkIndex sgdev.stats 1
scoreboard players set $Chests sgdev.stats 0

execute store result storage sgdev:stats ChunkIndex int 1 run scoreboard players get $ChunkIndex sgdev.stats
execute unless score $ChunkIndex sgdev.stats matches ..-1 run function sgdev:chests/stats/count/chunk with storage sgdev:stats

function sgdev:chests/stats/display