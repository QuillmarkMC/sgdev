execute if score $Debug sgdev.var matches 2.. run say sgdev:dfu/strict_chest/check_block

#called with storage sgdev:dfu
$execute if block $(xyz) water run return 1
$execute if block $(xyz) chest[waterlogged=true] run return 1

return 0