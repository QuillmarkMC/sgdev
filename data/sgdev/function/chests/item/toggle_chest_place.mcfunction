scoreboard players operation @s sgdev.chest_place *= #-1 sgdev.math
execute if score @s sgdev.chest_place matches 1 run tellraw @s [{"text":""},{"text":"[!] ","bold":true,"color":"gold"},{"text":"Enabled automatic chest placement."}]
execute if score @s sgdev.chest_place matches -1 run tellraw @s [{"text":""},{"text":"[!] ","bold":true,"color":"gold"},{"text":"Disabled automatic chest placement."}]

scoreboard players reset @s sgdev.toggle_chest_place