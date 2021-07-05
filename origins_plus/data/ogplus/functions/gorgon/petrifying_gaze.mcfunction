playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.5 2
particle minecraft:large_smoke ~ ~1 ~ 0.25 0.5 0.25 0 5
execute positioned ^ ^ ^7 run execute at @e[distance=..6] run particle minecraft:firework ~ ~1 ~ 0.25 0.5 0.25 0 10
execute positioned ^ ^ ^7 run execute at @e[distance=..6] run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.5 1
execute positioned ^ ^ ^7 run effect give @e[type=!player,nbt=!{HandItems:[{id:"minecraft:shield",Count:1b},{}]}, distance=..6] minecraft:slowness 10 255 false
execute positioned ^ ^ ^7 run effect give @e[type=!player,nbt=!{HandItems:[{id:"minecraft:shield",Count:1b},{}]}, distance=..6] minecraft:blindness 9 255 false
execute positioned ^ ^ ^7 run effect give @e[type=player,nbt=!{SelectedItem:{id:"minecraft:shield",Count:1b}}, distance=..6] minecraft:slowness 10 255 false
execute positioned ^ ^ ^7 run effect give @e[type=player,nbt=!{SelectedItem:{id:"minecraft:shield",Count:1b}}, distance=..6] minecraft:blindness 9 255 false