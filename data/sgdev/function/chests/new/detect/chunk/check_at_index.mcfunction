execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/new/detect/chunk/check_at_index

#Success=0, modify failed aka items are the same (exit loop)
#Success=1, modify succeeded aka items are not the same (continue loop)
$execute store success score #Success sgdev.array run data modify storage sgdev:array Chunks[$(ChunkIndex)].Pos set from storage sgdev:click Chunk.Pos

#if Success != 0, recursive call
execute unless score #Success sgdev.array matches 0 run scoreboard players remove $ChunkIndex sgdev.array 1
execute unless score #Success sgdev.array matches 0 store result storage sgdev:array ChunkIndex int 1 run scoreboard players get $ChunkIndex sgdev.array
execute unless score #Success sgdev.array matches 0 unless score $ChunkIndex sgdev.array matches ..-1 run function sgdev:chests/new/detect/chunk/check_at_index with storage sgdev:array
return run scoreboard players get $ChunkIndex sgdev.array