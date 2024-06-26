execute if score $Debug sgdev.var matches 2.. run say sgdev:chests/new/detect/chest/begin

#called with storage sgdev:array
#$(ChunkIndex) is the chunk array index that the new chest is located in

#check if chest of new_chest is already in list
$data modify storage sgdev:array Chests set from storage sg:chests Chunks[$(ChunkIndex)].Chests
execute store result score $ChestIndex sgdev.array run data get storage sgdev:array Chests
execute store result storage sgdev:array ChestIndex int 1 run scoreboard players remove $ChestIndex sgdev.array 1

#check if chest already exists
#$ChestOutput will be the index that the chest exists at, or -1 if not present
execute store result score $ChestOutput sgdev.array run function sgdev:chests/new/detect/chest/check_at_index with storage sgdev:array

#if $ChestOutput = -1, add new chest
execute if score $ChestOutput sgdev.array matches -1 run function sgdev:chests/new/create/chest with storage sgdev:click Chest
#if $ChestOutput != -1, display error
execute unless score $ChestOutput sgdev.array matches -1 run tellraw @a[tag=ChestClicker,limit=1] [{"text":""},{"text":"[!] ","bold":true,"color":"red"},{"text":"Chest already exists at this location!"}]