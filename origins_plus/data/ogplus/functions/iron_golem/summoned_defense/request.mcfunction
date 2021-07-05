# executed as an item
scoreboard players enable @a[team=iron_golem] ironGolemRequest
execute store result score @s x run data get entity @s Pos.[0]
execute store result score @s y run data get entity @s Pos.[1]
execute store result score @s z run data get entity @s Pos.[2]
# 1 for yes 2 for no
tellraw @a[team=iron_golem,tag=!requested] ["",{"selector":"@p","color":"yellow"},{"text":" has requested to summon you at [x="},{"score":{"name":"@s","objective":"x"},"color":"dark_aqua"},{"text":",y="},{"score":{"name":"@s","objective":"y"},"color":"dark_aqua"},{"text":",z="},{"score":{"name":"@s","objective":"z"},"color":"dark_aqua"},{"text":"]\n"},{"text":"[Accept]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger ironGolemRequest set 1"}},{"text":"            "},{"text":"[Deny]","color":"red","clickEvent":{"action":"run_command","value":"/trigger ironGolemRequest set 2"}}]
tag @a[team=iron_golem,tag=!requested] add requested
tag @s add requesting