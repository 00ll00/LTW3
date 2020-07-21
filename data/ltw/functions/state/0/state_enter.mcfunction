# 要求系统进入状态 0（等待大厅）
scoreboard players set $state mem 0
execute as @a run function ltw:state/0/player_enter

# HUD
scoreboard objectives setdisplay belowName gold
scoreboard objectives setdisplay sidebar gold
scoreboard objectives setdisplay list gold

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify player friendlyFire false
team modify player collisionRule never
gamerule fallDamage false

# 清理加载区域
forceload remove all

# 重置开始倒计时
scoreboard players set $countdown mem 0

# 重置当前状态
function ltw:state/0/refresh_game_type