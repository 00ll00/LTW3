# 根据轮数生成对应的物品

execute if score $round mem matches ..2 run function item:bonus_item/gameparty/mixed/random
execute if score $round mem matches 3 run function item:bonus_item/gameparty/score/random
execute if score $round mem matches 4 run function item:bonus_item/gameparty/mixed/random
execute if score $round mem matches 5.. run function item:bonus_item/gameparty/score/random