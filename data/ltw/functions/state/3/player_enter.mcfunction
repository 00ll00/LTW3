# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
title @s clear
gamemode spectator @s

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s instant_health 10 0 true
effect give @s blindness 1000000 0 true
