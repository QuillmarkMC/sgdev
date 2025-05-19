execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/glow/loop/begin

execute if score $Glowing sgdev.var matches 1 run tellraw @s [{"text":"[!] ","bold":true,"color":"yellow"},{"translate":"sgdev.glow.start.place",bold:false,color:white}]
execute if score $Glowing sgdev.var matches -1 run tellraw @s [{"text":"[!] ","bold":true,"color":"yellow"},{"translate":"sgdev.glow.start.remove",bold:false,color:white}]
tag @s add ChestGlower
execute at @s run playsound block.note_block.pling ambient @s
scoreboard players set $GlowingInProgress sgdev.glow 1
scoreboard players set $Timer sgdev.glow 0

#get number of chunks, use it as index to loop through chunk array and get all chests per chunk
execute store result score $ChunkIndex sgdev.glow run data get storage sg:chests Chunks
scoreboard players remove $ChunkIndex sgdev.glow 1

execute store result storage sgdev:glow ChunkIndex int 1 run scoreboard players get $ChunkIndex sgdev.glow
execute unless score $ChunkIndex sgdev.glow matches ..-1 run function sgdev:chests/glow/loop/chunk with storage sgdev:glow
execute if score $ChunkIndex sgdev.glow matches ..-1 run function sgdev:chests/glow/loop/finish
