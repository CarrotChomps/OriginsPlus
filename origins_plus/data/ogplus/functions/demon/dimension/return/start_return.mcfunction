execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 10
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute at @s run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 0.5 0.5
execute as @s at @s run execute as @a[distance=..2] in minecraft:overworld run tp @s ~ 65 ~
execute at @s unless block ~ ~ ~ gravestones:gravestone run setblock ~ ~ ~ minecraft:air destroy
execute at @s unless block ~ ~1 ~ gravestones:gravestone run setblock ~ ~1 ~ minecraft:air destroy
execute at @s run spreadplayers ~ ~ 1 1 true @a[distance=..3]
execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 10
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 0.5 1