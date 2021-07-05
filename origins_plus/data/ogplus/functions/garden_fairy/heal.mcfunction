particle minecraft:totem_of_undying ~ ~ ~ 10 1 10 0.1 30
playsound minecraft:entity.player.levelup master @a[distance=..15] ~ ~ ~ 0.5 2
execute at @e[distance=1..10] run particle minecraft:happy_villager ~ ~1 ~ 0.25 0.5 0.25 0 10
effect give @e[distance=1..10] minecraft:instant_health 1 2
effect give @e[distance=1..10] minecraft:saturation 1 2 true