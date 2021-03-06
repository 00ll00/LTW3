# 初始化热土豆地图
forceload add 1000 3000 1100 3100

scoreboard players set $finish_mode mem 0
scoreboard players set $survival mem 0
scoreboard players reset * surviveRound

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire true
team modify playing collisionRule always
team modify playing deathMessageVisibility never
gamerule fallDamage false

# 清理残余实体
function mini:main/kill_entity


# 生成地图

setblock 1000 4 3000 air
setblock 1000 4 3000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:hp",sizeY:15,sizeZ:30,showboundingbox:0b}
setblock 1000 5 3000 minecraft:redstone_block
