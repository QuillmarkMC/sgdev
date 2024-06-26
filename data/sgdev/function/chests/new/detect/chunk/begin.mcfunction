execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/new/detect/chunk/begin

#if chunk list is uninitialized, initialize it
execute unless data storage sg:chests Chunks run data modify storage sg:chests Chunks set value []
#check if chunk of new_chest is already in list
data modify storage sgdev:array Chunks set from storage sg:chests Chunks
execute store result score $ChunkIndex sgdev.array run data get storage sgdev:array Chunks
execute store result storage sgdev:array ChunkIndex int 1 run scoreboard players remove $ChunkIndex sgdev.array 1

#if no chunks, exit early and create first chunk
execute if score $ChunkIndex sgdev.array matches ..-1 run return run function sgdev:chests/new/create/chunk with storage sgdev:click Chunk

#if any chunks exist, check if new chunk is present in list
#$ChunkOutput will be the index that the chunk exists at, or -1 if not present
execute store result score $ChunkOutput sgdev.array run function sgdev:chests/new/detect/chunk/check_at_index with storage sgdev:array

#sgdev:array ChunkIndex is still the correct index
#if $ChunkOutput = -1, add new chunk and chest
execute if score $ChunkOutput sgdev.array matches -1 run function sgdev:chests/new/create/chunk with storage sgdev:click Chunk
#if $ChunkOutput != -1, loop through the chunk's chests
execute unless score $ChunkOutput sgdev.array matches -1 run function sgdev:chests/new/detect/chest/begin with storage sgdev:array