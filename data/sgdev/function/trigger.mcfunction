execute as @a[scores={sgdev.stats=1..}] run function sgdev:chests/stats/get
execute as @a[scores={sgdev.eggs=1..}] run function sgdev:chests/item/give with entity @s
execute as @a[scores={sgdev.toggle_chest_place=1..}] run function sgdev:chests/item/toggle_chest_place
execute as @a[scores={sgdev.glow=1..}] run function sgdev:chests/glow/toggle

execute as @a if score @s sgdev.spawn_chance matches ..0 run scoreboard players set @s sgdev.spawn_chance 1
execute as @a if score @s sgdev.spawn_chance matches 101.. run scoreboard players set @s sgdev.spawn_chance 100

scoreboard players enable @a sgdev.stats
scoreboard players enable @a sgdev.eggs
scoreboard players enable @a sgdev.toggle_chest_place
scoreboard players enable @a sgdev.glow
scoreboard players enable @a sgdev.spawn_chance
