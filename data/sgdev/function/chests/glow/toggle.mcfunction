execute if score $GlowingInProgress sgdev.glow matches 1 run tellraw @s [{"text":""},{"text":"[!] ","bold":true,"color":"dark_red"},{"text":"Please wait for the current operation to finish!"}]

execute unless score $GlowingInProgress sgdev.glow matches 1 run scoreboard players operation $Glowing sgdev.var *= #-1 sgdev.math
execute unless score $GlowingInProgress sgdev.glow matches 1 run function sgdev:chests/glow/loop/begin

scoreboard players reset @s sgdev.glow
