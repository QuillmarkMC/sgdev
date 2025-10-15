execute if score $Debug sgdev.var matches 3.. run say sgdev:chests/glow/loop/data/block_display

#called with storage sgdev:glow
#this function is duplicated in sgdev:chests/new/create/glow/data/block_display
#$(Quality) is the quality of the chest at $(ChunkIndex) and $(ChestIndex), used to assign a glowing color

$data merge entity @s {Tags:["sgdev.GlowingChest"],Glowing:true,block_state:{"Name":"sponge"},view_range:3f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,0.15f,-0.25f],scale:[0.5f,0.5f,0.5f]},glow_color_override:$(Color)}
#$team join $(Quality)
