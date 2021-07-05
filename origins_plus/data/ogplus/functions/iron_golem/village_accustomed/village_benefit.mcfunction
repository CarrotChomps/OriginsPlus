# Check Health
execute as @e[type=minecraft:iron_golem,distance=..20] at @s run execute store result score @s entityHealth run data get entity @s Health 1
execute as @e[type=minecraft:villager,distance=..20] at @s run execute store result score @s entityHealth run data get entity @s Health 1

# Heal Golems
execute as @e[type=minecraft:iron_golem,distance=..20] at @s if score @s entityHealth matches ..99 run particle minecraft:block iron_block ~ ~1.56 ~ 0.75 0.75 0.75 0.5 20
execute as @e[type=minecraft:iron_golem,distance=..20] at @s if score @s entityHealth matches ..99 run particle minecraft:crit ~ ~1.56 ~ 0.75 0.75 0.75 0.5 20
execute as @e[type=minecraft:iron_golem,distance=..20] at @s if score @s entityHealth matches ..99 run playsound minecraft:entity.iron_golem.repair neutral @a ~ ~ ~ 0.3 0.5
execute as @e[type=minecraft:iron_golem,distance=..20] at @s if score @s entityHealth matches ..99 run effect give @s minecraft:regeneration 30 2 true

# Heal Villagers
execute as @e[type=minecraft:villager,distance=..20] at @s if score @s entityHealth matches ..19 run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.5 5
execute as @e[type=minecraft:villager,distance=..20] at @s if score @s entityHealth matches ..19 run playsound minecraft:entity.villager.yes neutral @a ~ ~ ~ 0.3 1
execute as @e[type=minecraft:villager,distance=..20] at @s if score @s entityHealth matches ..19 run effect give @s minecraft:regeneration 30 2 true