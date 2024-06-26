execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/new/detect/chest/check_at_index

#Success=0, modify failed aka items are the same (exit loop)
#Success=1, modify succeeded aka items are not the same (continue loop)
$execute store success score #Success sgdev.array run data modify storage sgdev:array Chests[$(ChestIndex)].xyz set from storage sgdev:click Chest.xyz

#execute if score #Success sgdev.array matches 0 run return run scoreboard players get $ChestIndex sgdev.array

#if Success != 0, recursive call
execute unless score #Success sgdev.array matches 0 run scoreboard players remove $ChestIndex sgdev.array 1
execute unless score #Success sgdev.array matches 0 store result storage sgdev:array ChestIndex int 1 run scoreboard players get $ChestIndex sgdev.array
execute unless score #Success sgdev.array matches 0 unless score $ChestIndex sgdev.array matches ..-1 run function sgdev:chests/new/detect/chest/check_at_index with storage sgdev:array
return run scoreboard players get $ChestIndex sgdev.array