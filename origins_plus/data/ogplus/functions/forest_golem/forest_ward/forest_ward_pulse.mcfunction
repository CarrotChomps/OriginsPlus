execute at @e[tag=forest_ward] run playsound minecraft:entity.zombie_villager.converted master @a[distance=..10] ~ ~ ~ 0.1 1
execute at @e[tag=forest_ward] run data merge entity @e[tag=magic_leaf,sort=nearest,limit=1] {Age:0}
execute at @e[tag=forest_ward] run particle happy_villager ~ ~1 ~ 2 2 2 0.1 10
execute at @e[tag=forest_ward] run particle totem_of_undying ~ ~1 ~ 2 2 2 0.1 2
execute at @e[tag=forest_ward] run effect give @a[distance=..4] resistance 5 10
execute at @e[tag=forest_ward] run effect give @a[distance=..4] regeneration 5 0 true
execute at @e[tag=forest_ward] run effect give @a[distance=..4] fire_resistance 5 0 true
schedule function ogplus:forest_golem/forest_ward/forest_ward_pulse 1s