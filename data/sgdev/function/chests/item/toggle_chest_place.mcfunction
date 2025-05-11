scoreboard players operation @s sgdev.chest_place *= #-1 sgdev.math
execute if score @s sgdev.chest_place matches 1 run tellraw @s [{"text":"[!] ","bold":true,"color":"gold"},{"translate":"sgdev.auto_place.enable",bold:false,color:white}]
execute if score @s sgdev.chest_place matches -1 run tellraw @s [{"text":"[!] ","bold":true,"color":"gold"},{"translate":"sgdev.auto_place.disable",bold:false,color:white}]

scoreboard players reset @s sgdev.toggle_chest_place