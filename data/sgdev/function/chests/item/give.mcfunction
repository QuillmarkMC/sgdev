clear @s #sgdev:chest_eggs[minecraft:custom_data~{ChestEgg:1b}]
$give @s pufferfish_spawn_egg[entity_data={id:"minecraft:marker",Tags:["NewChestMarker"],data:{Quality:"common",Owner:$(UUID)}},minecraft:custom_data={ChestEgg:1b},custom_name='{"text":"New Chest","color":"light_purple","bold":true,"italic":false}'] 1
$give @s silverfish_spawn_egg[entity_data={id:"minecraft:marker",Tags:["RemoveChestMarker"],data:{Owner:$(UUID)}},minecraft:custom_data={ChestEgg:1b},custom_name='{"text":"Delete Chest","color":"red","bold":true,"italic":false}'] 1

scoreboard players reset @s sgdev.eggs