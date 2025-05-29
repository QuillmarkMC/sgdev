execute if score $GlowingInProgress sgdev.glow matches 1 run tellraw @s [{"text":"[!] ","bold":true,"color":"dark_red"},{"translate":"sgdev.glow.please_wait",bold:false,color:"white"}]

execute unless score $GlowingInProgress sgdev.glow matches 1 run scoreboard players operation $Glowing sgdev.var *= #-1 sgdev.math
execute unless score $GlowingInProgress sgdev.glow matches 1 run function sgdev:chests/glow/loop/begin

scoreboard players reset @s sgdev.glow
