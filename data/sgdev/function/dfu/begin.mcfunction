execute if score $Debug sgdev.var matches 1.. run say sgdev:dfu/begin

execute if score $State sgdev.dfu matches ..0 run return run tellraw @s [{"text":"[!] ","color": "dark_red","bold": true},{"translate":"sgdev.dfu.error.general_failure","color": "white","bold":false}]
scoreboard players set $ExitCode sgdev.dfu 0

#get number of chunks, use it as index to loop through chunk array and get all chests per chunk
execute store result score $Chunks sgdev.dfu run data get storage sg:chests Chunks
scoreboard players operation $ChunkIndex sgdev.dfu = $Chunks sgdev.dfu
scoreboard players remove $ChunkIndex sgdev.dfu 1
scoreboard players set $Chests sgdev.dfu 0

execute store result storage sgdev:dfu ChunkIndex int 1 run scoreboard players get $ChunkIndex sgdev.dfu
execute unless score $ChunkIndex sgdev.dfu matches ..-1 run function sgdev:dfu/chunk with storage sgdev:dfu

#loop completed
execute if score $ExitCode sgdev.dfu matches 0 run tellraw @s [{"text":"[!] ","color": "yellow","bold": true},{"translate":"sgdev.dfu.warning.no_changes","color": "white","bold":false}]
execute if score $ExitCode sgdev.dfu matches 1 run tellraw @s [{"text":"[!] ","color": "green","bold": true},{"translate":"sgdev.dfu.success","color": "white","bold":false}]

scoreboard players set $State sgdev.dfu -1