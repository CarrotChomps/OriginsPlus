execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 10
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute at @s run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 0.5 1
execute as @s at @s run execute as @a[distance=..2] in minecraft:the_nether run tp @s ~ 128 ~
execute at @s run spreadplayers ~ ~ 1 1 under 126 true @a[distance=..3]
execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 10
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 0.5 2