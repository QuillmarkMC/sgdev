# Chest glow previously relied on using teams corresponding to the chest's rarity
# These teams were limited to what colors were available
# Now, glowing uses the glow_color_override data of display entities to use a custom hex color
# This function will convert chests saved using the old method to the new method
execute if score $Debug sgdev.var matches 1.. run say sgdev:dfu/glow_color/start

scoreboard players operation $State sgdev.dfu = $GlowColor sgdev.dfu
function sgdev:dfu/begin