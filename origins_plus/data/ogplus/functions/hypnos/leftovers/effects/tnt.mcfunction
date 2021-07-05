playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
particle explosion ~ ~1 ~ 0.5 0.5 0.5 0 10
gamerule showDeathMessages false
tellraw @a [{"selector": "@s"},{"text":" decided to eat tnt..."}]
kill @s
gamerule showDeathMessages true