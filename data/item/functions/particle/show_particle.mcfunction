# 播放玩家粒子效果
execute as @a[scores={particle_type=1},gamemode=!spectator] at @s run particle composter ~ ~0.1 ~ 0.15 0 0.15 0.001 2 force @a
execute as @a[scores={particle_type=2},gamemode=!spectator] at @s run particle dust 1 1 1 1.5 ~ ~0.1 ~ 0.15 0 0.15 0.001 2 force @a
execute as @a[scores={particle_type=3},gamemode=!spectator] at @s run particle falling_water ~ ~0.1 ~ 0.15 0 0.15 0.001 3 force @a
execute as @a[scores={particle_type=4},gamemode=!spectator] at @s run particle flame ~ ~0.1 ~ 0.15 0 0.15 0.001 2 force @a
execute as @a[scores={particle_type=5},gamemode=!spectator] at @s run particle dust 10 10 10 1.5 ~ ~0.1 ~ 0.15 0 0.15 0.001 2 force @a
execute as @a[scores={particle_type=6},gamemode=!spectator] at @s run particle soul_fire_flame ~ ~0.1 ~ 0.15 0 0.15 0.001 1 force @a
execute as @a[scores={particle_type=6},gamemode=!spectator] at @s run particle flame ~ ~0.1 ~ 0.15 0 0.15 0.001 1 force @a

# 播放展示用实体的粒子效果
execute as @e[type=!player,tag=show_particle_1] at @s run particle composter ~ ~0.5 ~ 0.15 0.15 0.15 0.001 2 force @a
execute as @e[type=!player,tag=show_particle_2] at @s run particle dust 1 1 1 1.5 ~ ~0.5 ~ 0.1 0.15 0.1 0.001 1 force @a
execute as @e[type=!player,tag=show_particle_3] at @s run particle falling_water ~ ~0.8 ~ 0.2 0.15 0.2 0.001 3 force @a
execute as @e[type=!player,tag=show_particle_4] at @s run particle flame ~ ~0.5 ~ 0.15 0.15 0.15 0.001 1 force @a
execute as @e[type=!player,tag=show_particle_5] at @s run particle dust 10 10 10 1.5 ~ ~0.5 ~ 0.1 0.15 0.1 0.001 1 force @a
execute as @e[type=!player,tag=show_particle_6] at @s run particle soul_fire_flame ~ ~0.5 ~ 0.1 0.15 0.1 0.001 1 force @a
execute as @e[type=!player,tag=show_particle_6] at @s run particle flame ~ ~0.5 ~ 0.1 0.15 0.1 0.001 1 force @a
