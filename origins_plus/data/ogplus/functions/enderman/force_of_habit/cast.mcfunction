scoreboard players add @s scanCount 1
particle portal ~ ~ ~ 0.1 0.1 0.1 0 1
#particle flame ~ ~ ~ 0.1 0.1 0.1 0 1
execute unless block ~ ~ ~ #minecraft:enderman_holdable if block ^ ^ ^-0.5 #ogplus:legal_cast if score @s scanCount <= *scanMax scanCount positioned ^ ^ ^0.5 run function ogplus:enderman/force_of_habit/cast
execute if block ~ ~ ~ #minecraft:enderman_holdable run function ogplus:enderman/force_of_habit/get_block