# 跟老板玩骰子
function lib:roll_dice/d20
scoreboard players operation @s temp = $random mem
execute as @e[type=piglin,tag=shop_piglin_11,tag=lobby_entity] run function lib:roll_dice/d20
function lib:roll_dice/show_result