execute if score $Debug sgdev.var matches 3.. run say sgdev:chests/glow/loop/recursive/get_scheduled_idiot

#count how many ticks were delayed for forceloading
scoreboard players add $Timer sgdev.glow 1
function sgdev:chests/glow/loop/recursive/load_storage with storage sgdev:glow
