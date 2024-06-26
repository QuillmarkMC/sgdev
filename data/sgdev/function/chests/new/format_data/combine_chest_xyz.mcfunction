#save calculated chest coords into data as one string, instead of individual xyz
$data modify storage sgdev:click Chest.xyz set value "$(x) $(y) $(z)"

#it is useful to have the coordinate data as both individual xyz and one combined string
#combined string is used when checking if the chest already exists
#individual xyz is used to calculate chunk coordinates