execute if score $Debug sgdev.var matches 3.. run say sgdev:chests/glow/loop/recursive/check_loaded

#called with storage sgdev:glow
#determine if specific coordinates are chunk loaded before trying to summon anything there

#only perform the query on first loop at this index (score is reset in sgdev:chests/glow/loop/chunk)
$execute if score $ForceloadQueryOnce sgdev.glow matches 0 store success score $ForceloadQueryCheck sgdev.glow positioned $(xyz) run forceload query ~ ~
scoreboard players set $ForceloadQueryOnce sgdev.glow 1

$execute store success score #Loaded sgdev.glow if loaded $(xyz)

$execute unless score #Loaded sgdev.glow matches 1 positioned $(xyz) run forceload add ~ ~
$execute if score #Loaded sgdev.glow matches 1 unless score $ForceloadQueryCheck sgdev.glow matches 1 positioned $(xyz) run forceload remove ~ ~

execute unless score #Loaded sgdev.glow matches 1 run schedule function sgdev:chests/glow/loop/recursive/get_scheduled_idiot 1t replace
execute if score #Loaded sgdev.glow matches 1 run function sgdev:chests/glow/loop/chest with storage sgdev:glow
