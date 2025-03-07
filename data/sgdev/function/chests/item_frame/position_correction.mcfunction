execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/item_frame/position_correction

# @s = item frame
#check if there is a chest behind item frame, otherwise use item frame's actual coordinates
execute if block ^ ^ ^-0.5 #sgdev:placeable positioned ^ ^ ^-0.5 run function sgdev:chests/item_frame/summon_marker with entity @s Item.components.minecraft:custom_data
execute unless block ^ ^ ^-0.5 #sgdev:placeable run function sgdev:chests/item_frame/summon_marker with entity @s Item.components.minecraft:custom_data
