execute if score $Debug sgdev.var matches 1.. run say sgdev:chests/new/click

#check who placed chest egg
function sgdev:chests/item/tag_player/check

execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~ facing entity @a[tag=ChestClicker,limit=1]
execute at @s run particle end_rod ~ ~ ~ 0.125 0.125 0.125 0 10 force

execute store result storage sgdev:click Chest.x int 1 run data get entity @s Pos[0]
execute store result storage sgdev:click Chest.y int 1 run data get entity @s Pos[1]
execute store result storage sgdev:click Chest.z int 1 run data get entity @s Pos[2]

execute store result storage sgdev:click Chunk.x int 1 run data get storage sgdev:click Chest.x 0.0625
execute store result storage sgdev:click Chunk.z int 1 run data get storage sgdev:click Chest.z 0.0625

data modify storage sgdev:click Chest.Quality set from entity @s data.Quality
data modify storage sgdev:click Chest.PlacedBy set from entity @s data.Owner
data modify storage sgdev:click Chest.SpawnChance set from entity @s data.SpawnChance
execute as @a[tag=ChestClicker,limit=1] run function sgdev:chests/new/get_rotation

function sgdev:chests/new/format_data/calculate_chunk
function sgdev:chests/new/format_data/combine_chest_xyz with storage sgdev:click Chest
#debug outputs
execute if score $Debug sgdev.var matches 1.. run function sgdev:chests/new/debug/display_pos with storage sgdev:click Chest
execute if score $Debug sgdev.var matches 1.. run function sgdev:chests/new/debug/display_chunk with storage sgdev:click Chunk
execute if score $Debug sgdev.var matches 1.. run function sgdev:chests/new/debug/display_clicker

execute if score $GlowingInProgress sgdev.glow matches 1.. run function sgdev:chests/new/errors/glowing_in_progress
execute unless score $GlowingInProgress sgdev.glow matches 1.. run function sgdev:chests/new/detect/chunk/begin

kill @s
tag @a[tag=ChestClicker,limit=1] remove ChestClicker