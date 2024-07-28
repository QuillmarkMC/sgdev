execute as @a[scores={sgdev.stats=1..}] run function sgdev:chests/stats/get
execute as @a[scores={sgdev.eggs=1..}] run function sgdev:chests/item/give with entity @s
execute as @a[scores={sgdev.toggle_chest_place=1..}] run function sgdev:chests/item/toggle_chest_place
execute as @a[scores={sgdev.glow=1..}] run function sgdev:chests/glow/toggle

scoreboard players enable @a sgdev.stats
scoreboard players enable @a sgdev.eggs
scoreboard players enable @a sgdev.toggle_chest_place
scoreboard players enable @a sgdev.glow
