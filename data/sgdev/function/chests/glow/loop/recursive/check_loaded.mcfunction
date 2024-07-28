execute if score $Debug sgdev.var matches 3.. run say sgdev:chests/glow/loop/recursive/check_loaded

#called with storage sgdev:glow
#determine if specific coordinates are chunk loaded before trying to summon anything there

$execute store success score #Loaded sgdev.glow if loaded $(xyz)

$execute unless score #Loaded sgdev.glow matches 1 positioned $(xyz) run forceload add ~ ~
$execute if score #Loaded sgdev.glow matches 1 positioned $(xyz) run forceload remove ~ ~

execute unless score #Loaded sgdev.glow matches 1 run schedule function sgdev:chests/glow/loop/recursive/get_scheduled_idiot 1t replace
execute if score #Loaded sgdev.glow matches 1 run function sgdev:chests/glow/loop/chest with storage sgdev:glow
#execute if score #Loaded sgdev.glow matches 1 run function sgdev:chests/glow/loop/recursive/chest