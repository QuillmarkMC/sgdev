scoreboard players operation $All sgdev.stats -= $anvil sgdev.stats

tellraw @s [{"translate":"sgdev.stats.total_chunks","color": "red",with:[{"score":{"name":"$Chunks","objective":"sgdev.stats"},color:white}]}]
tellraw @s [{"translate":"sgdev.stats.total_chests","color": "red",with:[{"score":{"name":"$All","objective":"sgdev.stats"},color:white}]}]
tellraw @s [{"translate":"sgdev.stats.common","color": "white",with:[{"score":{"name":"$common","objective":"sgdev.stats"},color:white}]}]
tellraw @s [{"translate":"sgdev.stats.uncommon","color": "#1eff00",with:[{"score":{"name":"$uncommon","objective":"sgdev.stats"},color:white}]}]
tellraw @s [{"translate":"sgdev.stats.rare","color": "#0070dd",with:[{"score":{"name":"$rare","objective":"sgdev.stats"},color:white}]}]
tellraw @s [{"translate":"sgdev.stats.epic","color": "#a335ee",with:[{"score":{"name":"$epic","objective":"sgdev.stats"},color:white}]}]
tellraw @s [{"translate":"sgdev.stats.legendary","color": "#ff8000",with:[{"score":{"name":"$legendary","objective":"sgdev.stats"},color:white}]}]
tellraw @s [{"translate":"sgdev.stats.cornucopia","color": "#e6cc80",with:[{"score":{"name":"$cornucopia","objective":"sgdev.stats"},color:white}]}]
tellraw @s [{"translate":"sgdev.stats.anvil","color": "dark_gray",with:[{"score":{"name":"$anvil","objective":"sgdev.stats"},color:white}]}]