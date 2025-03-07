scoreboard players operation $All sgdev.stats -= $anvil sgdev.stats

tellraw @s [{"text":""},{"text":"TOTAL CHUNKS: ","color": "red"},{"score":{"name":"$Chunks","objective":"sgdev.stats"}}]
tellraw @s [{"text":""},{"text":"TOTAL CHESTS: ","color": "red"},{"score":{"name":"$All","objective":"sgdev.stats"}}]
tellraw @s [{"text":""},{"text":"Common Chests: ","color": "white"},{"score":{"name":"$common","objective":"sgdev.stats"}}]
tellraw @s [{"text":""},{"text":"Uncommon Chests: ","color": "#1eff00"},{"score":{"name":"$uncommon","objective":"sgdev.stats"}}]
tellraw @s [{"text":""},{"text":"Rare Chests: ","color": "#0070dd"},{"score":{"name":"$rare","objective":"sgdev.stats"}}]
tellraw @s [{"text":""},{"text":"Epic Chests: ","color": "#a335ee"},{"score":{"name":"$epic","objective":"sgdev.stats"}}]
tellraw @s [{"text":""},{"text":"Legendary Chests: ","color": "#ff8000"},{"score":{"name":"$legendary","objective":"sgdev.stats"}}]
tellraw @s [{"text":""},{"text":"Cornucopia Chests: ","color": "#e6cc80"},{"score":{"name":"$cornucopia","objective":"sgdev.stats"}}]
tellraw @s [{"text":""},{"text":"Anvils: ","color": "dark_gray"},{"score":{"name":"$anvil","objective":"sgdev.stats"}}]