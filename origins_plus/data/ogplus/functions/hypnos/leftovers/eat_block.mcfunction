particle poof ~ ~ ~ 0.25 0.25 0.25 0 4
playsound minecraft:entity.generic.eat master @a ~ ~ ~ 0.5 1.25
effect give @s saturation 1 1 true
execute if block ~ ~ ~ #ogplus:leftovers/bouncy at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/bouncy
execute if block ~ ~ ~ #ogplus:leftovers/bright at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/bright
execute if block ~ ~ ~ #ogplus:leftovers/cold at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/cold
execute if block ~ ~ ~ #ogplus:leftovers/decay at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/decay
execute if block ~ ~ ~ #ogplus:leftovers/energetic at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/energetic
execute if block ~ ~ ~ #ogplus:leftovers/faint at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/faint
execute if block ~ ~ ~ #ogplus:leftovers/floaty at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/floaty
execute if block ~ ~ ~ #ogplus:leftovers/fresh at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/fresh
execute if block ~ ~ ~ #ogplus:leftovers/healthy at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/healthy
execute if block ~ ~ ~ #ogplus:leftovers/light at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/light
execute if block ~ ~ ~ #ogplus:leftovers/lucky at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/lucky
execute if block ~ ~ ~ #ogplus:leftovers/pumpkin at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/pumpkin
execute if block ~ ~ ~ #ogplus:leftovers/refreshing at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/refreshing
execute if block ~ ~ ~ #ogplus:leftovers/shiny at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/shiny
execute if block ~ ~ ~ #ogplus:leftovers/smart at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/smart
execute if block ~ ~ ~ #ogplus:leftovers/spicy at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/spicy
execute if block ~ ~ ~ #ogplus:leftovers/sweet at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/sweet
execute if block ~ ~ ~ #ogplus:leftovers/tnt at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/tnt
execute if block ~ ~ ~ #ogplus:leftovers/tough at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/tough
execute if block ~ ~ ~ #ogplus:leftovers/warm at @s positioned ~ ~ ~ run function ogplus:hypnos/leftovers/effects/warm
execute unless block ~ ~ ~ #ogplus:leftovers/blacklisted run gamerule doTileDrops false
execute unless block ~ ~ ~ #ogplus:leftovers/blacklisted run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #ogplus:leftovers/blacklisted run gamerule doTileDrops true
#setblock ~ ~ ~ glowstone
#say eat
#execute store result score @s scanCount run scoreboard players get *leftoversMax scanCount