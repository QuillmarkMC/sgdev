scoreboard objectives add sgdev.var dummy
execute unless score $Glowing sgdev.var matches 1.. run scoreboard players set $Glowing sgdev.var -1
execute unless score $Debug sgdev.var matches 1.. run scoreboard players set $Debug sgdev.var 0
scoreboard objectives add sgdev.chestVar dummy
scoreboard objectives add sgdev.math dummy
scoreboard players set #-1 sgdev.math -1
scoreboard players set #16 sgdev.math 16
scoreboard players set #1000 sgdev.math 1000
scoreboard players set #100 sgdev.math 100
scoreboard objectives add sgdev.array dummy
scoreboard objectives add sgdev.stats trigger
scoreboard objectives add sgdev.eggs trigger
scoreboard objectives add sgdev.toggle_chest_place trigger
scoreboard objectives add sgdev.chest_place dummy
scoreboard objectives add sgdev.demo dummy
execute unless score $NumPlayers sgdev.demo matches 1.. run scoreboard players set $NumPlayers sgdev.demo 12
execute unless score $Radius sgdev.demo matches 1.. run scoreboard players set $Radius sgdev.demo 30
scoreboard objectives add sgdev.glow trigger
execute unless score $GlowingInProgress sgdev.glow matches 1.. run scoreboard players set $GlowingInProgress sgdev.glow 0
scoreboard objectives add sgdev.spawn_chance trigger
scoreboard objectives add sgdev.common dummy
scoreboard objectives add sgdev.rare dummy
scoreboard objectives add sgdev.epic dummy
scoreboard objectives add sgdev.cornucopia dummy
scoreboard objectives add sgdev.loot trigger

#teams for glowing chest rarity
team add common
team modify common color white
team add uncommon
team modify uncommon color green
team add rare
team modify rare color blue
team add epic
team modify epic color dark_purple
team add legendary
team modify legendary color gold
team add cornucopia
team modify cornucopia color aqua
team add anvil
team modify anvil color black