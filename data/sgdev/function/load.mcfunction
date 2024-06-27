scoreboard objectives add sgdev.var dummy
execute unless score $Debug sgdev.var matches 1.. run scoreboard players set $Debug sgdev.var 0
scoreboard objectives add sgdev.chestVar dummy
scoreboard objectives add sgdev.math dummy
scoreboard players set #-1 sgdev.math -1
scoreboard players set #16 sgdev.math 16
scoreboard players set #1000 sgdev.math 1000
scoreboard objectives add sgdev.array dummy
scoreboard objectives add sgdev.stats trigger
scoreboard objectives add sgdev.eggs trigger
scoreboard objectives add sgdev.toggle_chest_place trigger
scoreboard objectives add sgdev.chest_place dummy
scoreboard objectives add sgdev.demo dummy
execute unless score $NumPlayers sgdev.demo matches 1.. run scoreboard players set $NumPlayers sgdev.demo 12
execute unless score $DistanceFromCenter sgdev.demo matches 1.. run scoreboard players set $DistanceFromCenter sgdev.demo 30