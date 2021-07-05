execute if entity @s[type=#ogplus:undead] run effect give @s instant_health 1 0 true
execute unless entity @s[type=#ogplus:undead] run effect give @s instant_damage 1 0 true
particle firework ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 0.1 2