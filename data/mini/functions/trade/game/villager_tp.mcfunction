tag @s add tempPlayerTp
execute as @e[type=villager,tag=TradePlayer] if score @s player_id = @a[tag=tempPlayerTp,limit=1] player_id run tag @s add tempVillagerTp
execute as @e[type=villager,tag=TradePlayer] if score @s player_id = @a[tag=tempPlayerTp,limit=1] player_id run tag @s add tpPlayer
# execute at @s anchored feet run tp @e[type=villager,tag=tempVillagerTp] ^ ^ ^0.5
data modify entity @e[type=villager,tag=tempVillagerTp,limit=1] Pos set from entity @s Pos
tag @e[type=villager,tag=tempVillagerTp] remove tempVillagerTp
tag @s remove tempPlayerTp
