loot give @s loot sg:chests/base/rare
scoreboard players remove $LootLoop sgdev.demo 1
execute if score $LootLoop sgdev.demo matches 1.. run function sgdev:demo/loot/give/rare