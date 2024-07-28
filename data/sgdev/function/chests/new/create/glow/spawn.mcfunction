execute if score $Debug sgdev.var matches 3.. run say sgdev:chests/new/create/glow/spawn

#called with storage sgdev:click Chest
#function copied from sgdev:chests/glow/loop/spawn so data storages can be kept separate

$execute positioned $(xyz) summon block_display run function sgdev:chests/new/create/glow/data with storage sgdev:click Chest
