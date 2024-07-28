execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/glow/loop/finish

execute if score $Glowing sgdev.var matches 1 run tellraw @a[tag=ChestGlower] [{"text":""},{"text":"[!] ","bold":true,"color":"green"},{"text":"Glowing chests have been set! Operation completed in "},{"score":{"name":"$Timer","objective":"sgdev.glow"}},{"text": " ticks"}]
execute if score $Glowing sgdev.var matches -1 run tellraw @a[tag=ChestGlower] [{"text":""},{"text":"[!] ","bold":true,"color":"green"},{"text":"Glowing chests have been removed! Operation completed in "},{"score":{"name":"$Timer","objective":"sgdev.glow"}},{"text": " ticks"}]
execute as @a[tag=ChestGlower] at @s run playsound entity.experience_orb.pickup record @s

scoreboard players set $GlowingInProgress sgdev.glow 0
tag @a[tag=ChestGlower] remove ChestGlower