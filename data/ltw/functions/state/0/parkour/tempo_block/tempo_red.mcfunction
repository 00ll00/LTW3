# 替换方块
execute at @e[type=armor_stand,tag=lobby_tempo,tag=tempo_blue] run setblock ~ ~ ~ air
execute at @e[type=armor_stand,tag=lobby_tempo,tag=tempo_red] run setblock ~ ~ ~ red_concrete

# 播放音效
execute at @e[type=armor_stand,tag=lobby_tempo] run playsound block.note_block.pling block @a ~ ~ ~ 0.5 1.1