execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/new/create/physical_chest
# @s = marker at location of chest

#called with storage sgdev:click Chest
#place chest based on player rotation
#execute if entity @s[y_rotation=-45..44.99] at @s run setblock ~ ~ ~ chest[facing=south]
#execute if entity @s[y_rotation=45..134.99] at @s run setblock ~ ~ ~ chest[facing=west]
#execute if entity @s[y_rotation=135..224.99] at @s run setblock ~ ~ ~ chest[facing=north]
#execute if entity @s[y_rotation=225..314.99] at @s run setblock ~ ~ ~ chest[facing=east]
$execute unless data storage sgdev:click {Chest:{Quality:"anvil"}} at @s run setblock ~ ~ ~ chest[facing=$(Facing)]
$execute if data storage sgdev:click {Chest:{Quality:"anvil"}} at @s run setblock ~ ~ ~ anvil[facing=$(Facing)]

execute unless data storage sgdev:click {Chest:{Quality:"anvil"}} at @s run playsound block.wood.place block @a ~ ~ ~ 1 0.8
execute if data storage sgdev:click {Chest:{Quality:"anvil"}} at @s run playsound block.anvil.place block @a ~ ~ ~ 1 0.8