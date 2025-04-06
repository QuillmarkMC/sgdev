execute if score $Debug sgdev.var matches 3.. run say sgdev:chests/glow/loop/recursive/chunk

#separated the recursive logic into new function so it could be handled over multiple ticks
#check if there are any more chunks in the list
scoreboard players remove $ChunkIndex sgdev.glow 1
execute store result storage sgdev:glow ChunkIndex int 1 run scoreboard players get $ChunkIndex sgdev.glow
execute if score $ChunkIndex sgdev.glow matches ..-1 run function sgdev:chests/glow/loop/finish
execute unless score $ChunkIndex sgdev.glow matches ..-1 run function sgdev:chests/glow/loop/chunk with storage sgdev:glow
