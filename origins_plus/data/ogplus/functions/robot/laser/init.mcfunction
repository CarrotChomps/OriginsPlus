# Cast
scoreboard players set @s scanCount -1
tag @s add caster
playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 0.5 2
execute as @s at @s positioned ~ ~ ~ anchored eyes run function ogplus:robot/laser/cast