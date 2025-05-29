execute as @a[tag=!sgdev.Joined] run function sgdev:player/init

execute as @e[type=item_frame,tag=ChestMarker] at @s run function sgdev:chests/item_frame/position_correction
execute as @e[type=marker,tag=NewChestMarker] at @s run function sgdev:chests/new/click
execute as @e[type=marker,tag=RemoveChestMarker] at @s run function sgdev:chests/modify/click
execute as @e[type=marker,tag=SpawnChanceChestMarker] at @s run function sgdev:chests/modify/click

function sgdev:trigger

scoreboard players set $DevLoaded var 2