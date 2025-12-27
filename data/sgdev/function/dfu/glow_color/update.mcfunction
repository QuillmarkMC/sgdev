execute if score $Debug sgdev.var matches 2.. run say sgdev:dfu/glow_color/update

#called with storage sgdev:dfu
#set chest glow color override based on its rarity
$execute unless data storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Color run scoreboard players set $ExitCode sgdev.dfu 1
$data modify storage sgdev:dfu Quality set from storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Quality

$execute if data storage sgdev:dfu {Quality:"common"} run data modify storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Color set value "16777215"
$execute if data storage sgdev:dfu {Quality:"uncommon"} run data modify storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Color set value "2031360"
$execute if data storage sgdev:dfu {Quality:"rare"} run data modify storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Color set value "28893"
$execute if data storage sgdev:dfu {Quality:"epic"} run data modify storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Color set value "10696174"
$execute if data storage sgdev:dfu {Quality:"legendary"} run data modify storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Color set value "16744448"
$execute if data storage sgdev:dfu {Quality:"cornucopia"} run data modify storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Color set value "15125632"
$execute if data storage sgdev:dfu {Quality:"anvil"} run data modify storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Color set value "1"