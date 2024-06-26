execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/new/create/chunk

#called with storage sgdev:click Chunk
$data modify storage sg:chests Chunks append value {Pos:"$(Pos)"}

execute store result score $ChunkIndex sgdev.chestVar run data get storage sg:chests Chunks
execute store result storage sgdev:click Chest.ChunkIndex int 1 run scoreboard players remove $ChunkIndex sgdev.chestVar 1
#adding new chunk always includes new chest
function sgdev:chests/new/create/chest with storage sgdev:click Chest