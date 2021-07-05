particle minecraft:firework ~ ~ ~ 5 1 5 0.1 30
playsound minecraft:entity.zombie_villager.cure master @a[distance=..15] ~ ~ ~ 0.5 2
effect give @a[distance=..5] minecraft:levitation 1 15
effect give @a[distance=..5] minecraft:slow_falling 10 2 true
execute as @e[type=item,distance=..5] run data merge entity @s {Motion:[0.0,1.25,0.0]}
execute as @e[type=boat,distance=..5] run data merge entity @s {Motion:[0.0,1.25,0.0]}
execute as @e[type=minecart,distance=..5] run data merge entity @s {Motion:[0.0,3.0,0.0]}