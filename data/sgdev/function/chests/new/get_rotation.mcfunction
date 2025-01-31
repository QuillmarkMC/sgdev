# @s = player who placed chest
execute if entity @s[y_rotation=-45..44.99] run data modify storage sgdev:click Chest.Facing set value "north"
execute if entity @s[y_rotation=45..134.99] run data modify storage sgdev:click Chest.Facing set value "east"
execute if entity @s[y_rotation=135..224.99] run data modify storage sgdev:click Chest.Facing set value "south"
execute if entity @s[y_rotation=225..314.99] run data modify storage sgdev:click Chest.Facing set value "west"