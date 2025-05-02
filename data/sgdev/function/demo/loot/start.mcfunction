#fills the player's inventory with loot generated from the loot tables in the primary datapack
#amount of loot is controlled per player by specifying how many of each chest type to generate
clear @s

#scoreboard players set @s sgdev.common <num>
scoreboard players operation $LootLoop sgdev.demo = @s sgdev.common
execute if score $LootLoop sgdev.demo matches 1.. run function sgdev:demo/loot/give/common

#scoreboard players set @s sgdev.uncommon <num>
scoreboard players operation $LootLoop sgdev.demo = @s sgdev.uncommon
execute if score $LootLoop sgdev.demo matches 1.. run function sgdev:demo/loot/give/uncommon

#scoreboard players set @s sgdev.rare <num>
scoreboard players operation $LootLoop sgdev.demo = @s sgdev.rare
execute if score $LootLoop sgdev.demo matches 1.. run function sgdev:demo/loot/give/rare

#scoreboard players set @s sgdev.epic <num>
scoreboard players operation $LootLoop sgdev.demo = @s sgdev.epic
execute if score $LootLoop sgdev.demo matches 1.. run function sgdev:demo/loot/give/epic

#scoreboard players set @s sgdev.cornucopia <num>
scoreboard players operation $LootLoop sgdev.demo = @s sgdev.cornucopia
execute if score $LootLoop sgdev.demo matches 1.. run function sgdev:demo/loot/give/cornucopia

scoreboard players reset @s sgdev.loot
function sgdev:demo/loot/display
playsound entity.experience_orb.pickup record @s
