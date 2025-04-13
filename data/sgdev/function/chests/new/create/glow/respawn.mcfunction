execute if score $Debug sgdev.var matches 3.. run say sgdev:chests/new/create/glow/spawn

#called with storage sgdev:click Chest
#this function is used when a chest quality is updated 
execute at @s positioned ~ ~-0.5 ~ run kill @e[type=#sgdev:glowing,tag=sgdev.GlowingChest,limit=2,sort=nearest]
$execute positioned $(xyz) summon block_display run function sgdev:chests/new/create/glow/data/block_display with storage sgdev:click Chest
$execute positioned $(xyz) summon text_display run function sgdev:chests/new/create/glow/data/text_display