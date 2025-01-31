execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/item/tag_player/check
# @s = chest marker
#compare owner custom data on marker to all player UUIDs to determine what player placed the marker

data modify storage sgdev:eggs UUID set from entity @s data.Owner
data modify storage sgdev:eggs UUID_again set from entity @s data.Owner
execute as @a[sort=random,limit=1] run function sgdev:chests/item/tag_player/loop