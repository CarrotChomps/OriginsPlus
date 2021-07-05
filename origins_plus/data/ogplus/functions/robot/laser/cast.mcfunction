execute unless score @s scanCount matches -1 run particle dust 1 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0 1
execute unless score @s scanCount matches -1 as @e[tag=!caster,distance=..1.5,nbt=!{SelectedItem:{id:"minecraft:shield"}}] at @s run function ogplus:robot/laser/hit
execute if block ~ ~ ~ #ogplus:robot/legal_cast if score @s scanCount < *laserMax scanCount positioned ^ ^ ^1 run scoreboard players add @s scanCount 1
execute if block ~ ~ ~ #ogplus:robot/legal_cast if score @s scanCount < *laserMax scanCount positioned ^ ^ ^1 run function ogplus:robot/laser/cast
#execute unless block ~ ~ ~ #ogplus:leftovers/legal_cast run tag @e[tag=laser] remove laser