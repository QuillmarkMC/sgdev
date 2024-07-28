#kill old pigs
execute as @e[type=pig,tag=sgdev.Demo.Platform] at @s run tp @s ~ -200 ~
kill @e[type=pig,tag=sgdev.Demo.Platform]

#input number of players, scale by 1000, then do math for float precision before scaling back by 0.001
scoreboard players set $RotationAngle sgdev.demo 360000
scoreboard players operation #NumPlayers_math sgdev.demo = $NumPlayers sgdev.demo
scoreboard players operation #NumPlayers_math sgdev.demo *= #1000 sgdev.math
execute store result storage sgdev:demo Platform.Angle float 0.001 run scoreboard players operation $RotationAngle sgdev.demo /= $NumPlayers sgdev.demo

#reset armor stand rotation
execute as @e[type=armor_stand,tag=sgdev.Demo.Platform,limit=1] at @s run tp @s ~ ~ ~ 0.0 0.0

scoreboard players set $Count sgdev.demo 0
execute store result storage sgdev:demo Platform.Distance int 1 run scoreboard players get $Radius sgdev.demo
execute as @e[type=armor_stand,tag=sgdev.Demo.Platform,limit=1] at @s run function sgdev:demo/platforms/loop/advance with storage sgdev:demo Platform