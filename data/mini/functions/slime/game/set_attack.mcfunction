execute if score $countdown mem matches 101.. as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 2.5
execute if score $countdown mem matches 61..100 as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 4
execute if score $countdown mem matches 21..60 as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 5.5
execute if score $countdown mem matches ..20 as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 7
