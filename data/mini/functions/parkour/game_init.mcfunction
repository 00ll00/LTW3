# 初始化跑酷地图
forceload add 1000 1000 1064 1064

scoreboard players set $finish_mode mem 1
scoreboard players set $tempo_enable mem 1
scoreboard players set $countdown_fast mem 0

# 生成地图
setblock 1000 4 1000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"00ll00",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:parkour0",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1000 5 1000 minecraft:redstone_block
setblock 1000 4 1032 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"00ll00",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:parkour1",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1000 5 1032 minecraft:redstone_block
setblock 1000 4 1000 air
setblock 1000 4 1032 air

# 清理残余实体
kill @e[type=arrow]
kill @e[type=item]
kill @e[type=falling_block,tag=parkour_block]
kill @e[type=trident]

# 生成节奏方块实体
function mini:parkour/game/marker_spawn

# 生成奖励物品
execute positioned 1024.5 30.5 1038.5 run function item:bonus_item/gameparty/auto/green

# 生成传送门实体
summon minecraft:falling_block 1014 21 1057 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}
summon minecraft:falling_block 1014 21 1056 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}
summon minecraft:falling_block 1014 22 1057 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}
summon minecraft:falling_block 1014 22 1056 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}
summon minecraft:falling_block 1014 23 1057 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}
summon minecraft:falling_block 1014 23 1056 {Time:1,NoGravity:1b,BlockState:{Name:"nether_portal",Properties:{axis:z}},Tags:["parkour_block"]}

# 生成宝藏实体
summon item 1009.50 14.50 1007.50 {Tags:["treasure_item"],Age:-32768,PickupDelay:32768,NoGravity:1,Invulnerable:1,CustomNameVisible:1,Glowing:1,Motion:[0,0,0],Item:{id:"chest",Count:1},CustomName:'"营地屋顶"'}
summon item 1021.50 15.50 1016.50 {Tags:["treasure_item"],Age:-32768,PickupDelay:32768,NoGravity:1,Invulnerable:1,CustomNameVisible:1,Glowing:1,Motion:[0,0,0],Item:{id:"chest",Count:1},CustomName:'"沙漠骨骸"'}
summon item 1008.50 30.50 1020.50 {Tags:["treasure_item"],Age:-32768,PickupDelay:32768,NoGravity:1,Invulnerable:1,CustomNameVisible:1,Glowing:1,Motion:[0,0,0],Item:{id:"chest",Count:1},CustomName:'"神庙立柱"'}
summon item 1011.50 19.50 1058.50 {Tags:["treasure_item"],Age:-32768,PickupDelay:32768,NoGravity:1,Invulnerable:1,CustomNameVisible:1,Glowing:1,Motion:[0,0,0],Item:{id:"chest",Count:1},CustomName:'"下界之门"'}
summon item 1026.50 18.50 1047.00 {Tags:["treasure_item"],Age:-32768,PickupDelay:32768,NoGravity:1,Invulnerable:1,CustomNameVisible:1,Glowing:1,Motion:[0,0,0],Item:{id:"chest",Count:1},CustomName:'"落日森林"'}
summon item 1004.50 18.50 1043.50 {Tags:["treasure_item"],Age:-32768,PickupDelay:32768,NoGravity:1,Invulnerable:1,CustomNameVisible:1,Glowing:1,Motion:[0,0,0],Item:{id:"chest",Count:1},CustomName:'"地狱之顶"'}
summon item 1013.00 08.50 1041.00 {Tags:["treasure_item"],Age:-32768,PickupDelay:32768,NoGravity:1,Invulnerable:1,CustomNameVisible:1,Glowing:1,Motion:[0,0,0],Item:{id:"chest",Count:1},CustomName:'"节奏舞厅"'}
summon item 1007.50 13.50 1025.50 {Tags:["treasure_item"],Age:-32768,PickupDelay:32768,NoGravity:1,Invulnerable:1,CustomNameVisible:1,Glowing:1,Motion:[0,0,0],Item:{id:"chest",Count:1},CustomName:'"末路营火"'}
team join gold @e[tag=treasure_item]

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify player friendlyFire false
team modify player collisionRule never
gamerule fallDamage false
