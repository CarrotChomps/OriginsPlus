playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.5 0.5
particle minecraft:poof ~ ~1 ~ 0.25 0.5 0.25 0 5
execute positioned ^ ^ ^7 run execute at @e[distance=..6] run particle minecraft:large_smoke ~ ~1 ~ 0.25 0.5 0.25 0 10
execute positioned ^ ^ ^7 run execute at @e[distance=..6] run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 2 0.3
execute positioned ^ ^ ^7 run effect give @e[distance=..6] minecraft:slowness 10 2 false