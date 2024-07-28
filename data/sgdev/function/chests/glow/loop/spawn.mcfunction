execute if score $Debug sgdev.var matches 3.. run say sgdev:chests/glow/loop/spawn

#called with storage sgdev:glow
#$(xyz) is the coordinates of the chest at $(ChunkIndex) and $(ChestIndex)

#$execute positioned $(xyz) summon pufferfish run function sgdev:chests/glow/loop/data with storage sgdev:glow
$execute positioned $(xyz) summon block_display run function sgdev:chests/glow/loop/data with storage sgdev:glow
