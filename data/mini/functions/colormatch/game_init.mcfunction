# 初始化地图
forceload add 1001 4000 1075 4025
fill 1049 10 4025 1075 10 3999 bedrock
fill 1074 11 4000 1050 11 4024 magma_block
fill 1074 15 4000 1050 15 4024 stone
fill 1074 25 4000 1050 25 4024 barrier
fill 1075 11 3999 1075 40 4025 stone
fill 1075 11 3999 1049 40 3999 stone
fill 1049 11 3999 1049 40 4025 stone
fill 1049 11 4025 1075 40 4025 stone
fill 1074 40 4000 1050 40 4024 barrier


# 初始化
scoreboard players set $finish_mode mem 0
scoreboard players set $survival mem 0
scoreboard players set $color_match_time mem 60
scoreboard players set $color_match_type mem 0

# 刷新地基
function mini:colormatch/game/prepare_round
schedule function mini:colormatch/game_init2 13t replace

# 清理残余实体
kill @e[type=arrow]
kill @e[type=item]
kill @e[type=trident]

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire true
team modify playing collisionRule always
gamerule fallDamage false
