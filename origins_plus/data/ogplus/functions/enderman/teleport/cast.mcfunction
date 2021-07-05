particle portal ~ ~ ~ 0.1 0.1 0.1 0.5 4
#particle flame ~ ~ ~ 0.1 0.1 0.1 0 1
scoreboard players add @s rayCount 1
execute unless score @s rayCount <= *rayMax rayCount run function ogplus:enderman/teleport/too_far
execute unless block ~ ~ ~ #ogplus:legal_cast if score @s rayCount <= *rayMax rayCount run function ogplus:enderman/teleport/end
execute if block ~ ~ ~ #ogplus:legal_cast if score @s rayCount <= *rayMax rayCount positioned ^ ^ ^1 run function ogplus:enderman/teleport/cast