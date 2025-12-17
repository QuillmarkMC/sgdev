execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/item/tag_player/loop
# @s = player being checked

execute store success score #TagTemp sgdev.items run data modify storage sgdev:items UUID set from entity @s UUID
execute unless score #TagTemp sgdev.items matches 1 run return run tag @s add ChestClicker
#if no match, recursive call
data modify storage sgdev:items UUID set from storage sgdev:items UUID_again