execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/glow/loop/finish

execute if score $Glowing sgdev.var matches 1 run tellraw @a[tag=ChestGlower] [{"text":"[!] ","bold":true,"color":"green"},{"translate":"sgdev.glow.finish.place",bold:false,color:white,with:[{"score":{"name":"$Timer","objective":"sgdev.glow"}}]}]
execute if score $Glowing sgdev.var matches -1 run tellraw @a[tag=ChestGlower] [{"text":"[!] ","bold":true,"color":"green"},{"translate":"sgdev.glow.finish.remove",bold:false,color:white,with:[{"score":{"name":"$Timer","objective":"sgdev.glow"}}]}]
execute as @a[tag=ChestGlower] at @s run playsound entity.experience_orb.pickup ambient @s

scoreboard players set $GlowingInProgress sgdev.glow 0
tag @a[tag=ChestGlower] remove ChestGlower