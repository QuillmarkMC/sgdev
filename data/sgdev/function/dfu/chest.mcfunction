execute if score $Debug sgdev.var matches 2.. run say sgdev:dfu/chest

#called with storage sgdev:dfu
#$(ChunkIndex) is the chunk array index that is currently being accessed
#$(ChestIndex) is the chest array index within the above chunk that is currently being accessed

#all DFU conversions share the same loop logic, specific logic is determined by pre-defined $State
execute if score $State sgdev.dfu = $GlowColor sgdev.dfu run function sgdev:dfu/glow_color/update with storage sgdev:dfu

#recursive call, loop all chests within chunk
execute store result storage sgdev:dfu ChestIndex int 1 run scoreboard players remove $ChestIndex sgdev.dfu 1
execute unless score $ChestIndex sgdev.dfu matches ..-1 run function sgdev:dfu/chest with storage sgdev:dfu