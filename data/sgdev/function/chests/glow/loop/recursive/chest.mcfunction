execute if score $Debug sgdev.var matches 3.. run say sgdev:chests/glow/loop/recursive/chest

#separated the recursive logic into new function so it could be handled over multiple ticks
#check if there are any more chests in the current list
#scoreboard players remove $ChestIndex sgdev.glow 1
#execute store result storage sgdev:glow ChestIndex int 1 run scoreboard players get $ChestIndex sgdev.glow
#execute unless score $ChestIndex sgdev.glow matches ..-1 run function sgdev:chests/glow/loop/chest with storage sgdev:glow
#execute if score $ChestIndex sgdev.glow matches ..-1 run function sgdev:chests/glow/loop/recursive/chunk