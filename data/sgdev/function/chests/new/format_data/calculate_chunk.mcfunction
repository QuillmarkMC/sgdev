#convert chunk coordinates into north west corner of the chunk xyz coordinates
execute store result score $Num1 sgdev.math run data get storage sgdev:click Chunk.x
execute store result score $Num2 sgdev.math run data get storage sgdev:click Chunk.z

execute store result storage sgdev:click Chunk.x int 1 run scoreboard players operation $Num1 sgdev.math *= #16 sgdev.math
execute store result storage sgdev:click Chunk.z int 1 run scoreboard players operation $Num2 sgdev.math *= #16 sgdev.math

function sgdev:chests/new/format_data/save_chunk with storage sgdev:click Chunk