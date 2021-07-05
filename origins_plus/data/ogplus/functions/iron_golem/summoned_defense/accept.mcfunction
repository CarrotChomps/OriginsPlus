execute as @e[type=item,tag=requesting] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0.1 20
execute as @e[type=item,tag=requesting] at @s run particle minecraft:block bell ~ ~1 ~ 1 1 1 0.1 10
execute as @e[type=item,tag=requesting] at @s run playsound minecraft:block.bell.use block @a ~ ~ ~ 0.5 1
execute as @e[type=item,tag=requesting] at @s run tp @e[team=iron_golem,scores={ironGolemRequest=1}] ~ ~1 ~
execute as @e[type=item,tag=requesting] at @s run particle minecraft:poof ~ ~1 ~ 1 1 1 0.1 20
execute as @e[type=item,tag=requesting] at @s run particle minecraft:block iron_block ~ ~1 ~ 1 1 1 0.1 10
execute as @e[type=item,tag=requesting] at @s run playsound minecraft:entity.iron_golem.hurt block @a ~ ~ ~ 0.5 1
kill @e[type=item,tag=requesting]
execute as @a[team=iron_golem,scores={ironGolemRequest=0..2},distance=..5] at @s run scoreboard players set @s ironGolemRequest 0
execute as @a[team=iron_golem,scores={ironGolemRequest=0..2},distance=..5] at @s run tag @s remove requested