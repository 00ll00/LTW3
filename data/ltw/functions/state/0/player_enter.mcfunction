# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
function lib:sounds/music/hub
title @s clear
title @s actionbar ""

# 清理物品
clear @s

# 重置玩家血量上限
attribute @s generic.max_health base set 20

# 重置经验值
xp set @s 0 points
xp set @s 0 levels

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 4 true

# 冒险模式
gamemode adventure @s[tag=!debug]

# 传送玩家
tp @s[tag=!debug] 10 16 10
