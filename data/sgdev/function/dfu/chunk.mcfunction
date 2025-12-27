execute if score $Debug sgdev.var matches 2.. run say sgdev:dfu/chunk

#called with storage sgdev:dfu
#$(ChunkIndex) is the chunk array index that is currently being accessed

$execute store result score $ChestIndex sgdev.dfu run data get storage sg:chests Chunks[$(ChunkIndex)].Chests
scoreboard players remove $ChestIndex sgdev.dfu 1
execute store result storage sgdev:dfu ChestIndex int 1 run scoreboard players get $ChestIndex sgdev.dfu

function sgdev:dfu/chest with storage sgdev:dfu

#recursive call, loop all chunks
execute store result storage sgdev:dfu ChunkIndex int 1 run scoreboard players remove $ChunkIndex sgdev.dfu 1
execute unless score $ChunkIndex sgdev.dfu matches ..-1 run function sgdev:dfu/chunk with storage sgdev:dfu