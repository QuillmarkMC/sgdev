# Mojang added the ability to place a block using the strict argument, which prevents block updates
# We want to use this in order to have invalid blockstates next to the chests in the final map
# However, chests underwater placed with the strict argument do not automatically get waterlogged
# Any new chests placed will automatically track whether or not they are supposed to be placed waterlogged
# This function will apply the waterlogged state to all pre existing chests from old versions
execute if score $Debug sgdev.var matches 1.. run say sgdev:dfu/strict_chest/start

scoreboard players operation $State sgdev.dfu = $StrictChest sgdev.dfu
function sgdev:dfu/begin