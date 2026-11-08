execute if score $Debug sgdev.var matches 2.. run say sgdev:dfu/strict_chest/update

#called with storage sgdev:dfu
#check chest coordinates to determine if block should be waterlogged
$execute unless data storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Waterlogged run scoreboard players set $ExitCode sgdev.dfu 1
$data modify storage sgdev:dfu xyz set from storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].xyz

execute store result score #Result sgdev.dfu run function sgdev:dfu/strict_chest/check_block with storage sgdev:dfu
$execute if score #Result sgdev.dfu matches 1 run data modify storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Waterlogged set value "true"
$execute if score #Result sgdev.dfu matches 0 run data modify storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Waterlogged set value "false"