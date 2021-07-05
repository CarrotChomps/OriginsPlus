scoreboard players add @s scanCount 1
#particle flame ~ ~ ~ 0.1 0.1 0.1 0 1
execute unless block ~ ~ ~ minecraft:air run function ogplus:enderman/silk_touch/store_block
execute if block ~ ~ ~ minecraft:air if score @s scanCount <= *scanMax scanCount positioned ^ ^ ^0.2 run function ogplus:enderman/silk_touch/cast