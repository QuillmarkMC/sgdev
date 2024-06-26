execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/item/tag_player/loop
# @s = player being checked

execute store success score #TagTemp sgdev.eggs run data modify storage sgdev:eggs UUID set from entity @s UUID
execute unless score #TagTemp sgdev.eggs matches 1 run return run tag @s add ChestClicker
#if no match, recursive call
data modify storage sgdev:eggs UUID set from storage sgdev:eggs UUID_again
function sgdev:chests/item/tag_player/loop