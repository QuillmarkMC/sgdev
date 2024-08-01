execute if score $Debug sgdev.var matches 3.. run say sgdev:chests/glow/loop/spawn

#called with storage sgdev:glow
#this function is duplicated in sgdev:chests/new/create/glow/spawn
#$(xyz) is the coordinates of the chest at $(ChunkIndex) and $(ChestIndex)

#$execute positioned $(xyz) summon pufferfish run function sgdev:chests/glow/loop/data with storage sgdev:glow
$execute positioned $(xyz) summon block_display run function sgdev:chests/glow/loop/data/block_display with storage sgdev:glow
$execute positioned $(xyz) summon text_display run function sgdev:chests/glow/loop/data/text_display
