execute as @a[tag=!sgdev.Joined] run function sgdev:player/init

execute as @e[type=marker,tag=NewChestMarker] at @s run function sgdev:chests/new/click
execute as @e[type=marker,tag=RemoveChestMarker] at @s run function sgdev:chests/remove/click

function sgdev:trigger