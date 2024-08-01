execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/modify/detect/chest/begin

#called with storage sgdev:array
#$(ChunkIndex) is the chunk array index that the new chest is located in

#check if chest of new_chest is already in list
$data modify storage sgdev:array Chests set from storage sg:chests Chunks[$(ChunkIndex)].Chests
execute store result score $ChestIndex sgdev.array run data get storage sgdev:array Chests
execute store result storage sgdev:array ChestIndex int 1 run scoreboard players remove $ChestIndex sgdev.array 1

#check if chest already exists
#$ChestOutput will be the index that the chest exists at, or -1 if not present
execute store result score $ChestOutput sgdev.array run function sgdev:chests/modify/detect/chest/check_at_index with storage sgdev:array

#if $ChestOutput = -1, display error
execute if score $ChestOutput sgdev.array matches -1 run function sgdev:chests/modify/output/error
#if $ChestOutput != -1, remove from list
execute unless score $ChestOutput sgdev.array matches -1 if entity @s[tag=RemoveChestMarker] run function sgdev:chests/modify/remove_from_list with storage sgdev:array
execute unless score $ChestOutput sgdev.array matches -1 if entity @s[tag=SpawnChanceChestMarker] run function sgdev:chests/modify/change_spawn_chance with storage sgdev:array