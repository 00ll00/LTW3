# 每 5 秒执行一次
schedule function ltw:clock/tick100 100t replace

# 掐死原版 BGM
stopsound @a music music.game
stopsound @a music music.creative

# 恢复饥饿
effect give @a saturation 1 10 true