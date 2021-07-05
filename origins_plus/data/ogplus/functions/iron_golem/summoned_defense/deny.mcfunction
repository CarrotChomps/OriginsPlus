execute as @e[type=item,tag=requesting] at @s run particle large_smoke ~ ~1 ~ 0.25 0.25 0.25 0.1 5
execute as @e[type=item,tag=requesting] at @s run playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 0.5 1
kill @e[type=item,tag=requesting]
execute as @a[team=iron_golem,scores={ironGolemRequest=0..2},distance=..5] at @s run scoreboard players set @s ironGolemRequest 0
execute as @a[team=iron_golem,scores={ironGolemRequest=0..2},distance=..5] at @s run tag @s remove requested