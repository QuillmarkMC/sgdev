execute if score $Debug sgdev.var matches 3.. run say sgdev:chests/glow/loop/recursive/load_storage

#called with storage sgdev:glow
#load everything into storage needed for chests, as well as to check for chunk loading
#separated from other functions so it can be easily scheduled
$data modify storage sgdev:glow xyz set from storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].xyz
function sgdev:chests/glow/loop/recursive/check_loaded with storage sgdev:glow