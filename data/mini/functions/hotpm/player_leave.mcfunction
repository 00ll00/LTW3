# 玩家下线时检测重新生成土豆

execute unless entity @a[tag=pm_holding] run tellraw @a ["",{"text":">> ","color":"red","bold": true},"由于有玩家带着土豆跑路了, 正在为土豆选择更适合它的拥有者!"]
execute unless entity @a[tag=pm_holding] run function mini:hotpm/game/pm_init_first

# FIXME : <! 紧急> [HIM] 触发时会生成两个土豆