execute if score $Debug sgdev.var matches 2.. run say sgdev:demo/platforms/loop/advance
# @s = armor stand center
#function is executed at @s
$execute positioned ^ ^ ^$(Distance) run summon pig ~ ~ ~ {NoAI:true,Glowing:true,Silent:true,Invulnerable:true,Tags:["sgdev.Demo.Platform"]}
$tp @s ~ ~ ~ ~$(Angle) ~

scoreboard players add $Count sgdev.demo 1
execute unless score $Count sgdev.demo >= $NumPlayers sgdev.demo at @s run function sgdev:demo/platforms/loop/advance with storage sgdev:demo Platform