execute if score $Debug sgdev.var matches 3.. run say sgdev:chests/new/create/glow/data/block_display

#this function is copied from sgdev:chests/glow/loop/data/text_display

data merge entity @s {Tags:["sgdev.GlowingChest"],view_range:3f,billboard:"vertical",background:0,see_through:false,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]}}
data modify entity @s text set string storage sgdev:click Chest.SpawnChance