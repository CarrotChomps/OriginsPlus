# Magic Leaf Controller
execute at @e[tag=magic_leaf,nbt={Age: 80}] run function ogplus:forest_golem/magic_leaf/magic_leaf_unload

# Frost Vine Controller
execute at @e[tag=frost_vine,nbt={Age: 80}] run function ogplus:frozen_tomato/frost_vine/delete_vine

## Forest Ward Controller
# Load
execute as @e[tag=forest_ward,nbt={Age: 0s}] run function ogplus:forest_golem/forest_ward/forest_ward_pulse
execute as @e[tag=forest_ward,nbt={Age: 0s}] at @s run playsound minecraft:block.grass.place master @a[distance=..10] ~ ~ ~ 0.5 1
execute as @e[tag=forest_ward,nbt={Age: 0s}] at @s run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 0.5 1
execute as @e[tag=forest_ward,nbt={Age: 0s}] at @s run particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0 10
# Unload
execute as @e[tag=forest_ward,nbt={Age: 400s}] at @s run particle poof ~ ~ ~ 0.5 0.5 0.5 0 10
execute as @e[tag=forest_ward,nbt={Age: 400s}] at @s run playsound minecraft:entity.chicken.egg master @a[distance=..10] ~ ~ ~ 0.5 1
execute as @e[tag=forest_ward,nbt={Age: 400s}] run kill @s

## Pumpkin of Protection Controller
# Load
execute as @e[tag=prot_pumpkin,nbt={Age: 0s}] at @s run playsound minecraft:block.note_block.hat master @a[distance=..10] ~ ~ ~ 0.5 1
execute as @e[tag=prot_pumpkin,nbt={Age: 0s}] at @s run particle flame ~ ~ ~ 1.5 2 1.5 0 30
execute as @e[tag=prot_pumpkin,nbt={Age: 20s}] at @s run playsound minecraft:block.note_block.hat master @a[distance=..10] ~ ~ ~ 0.5 1
execute as @e[tag=prot_pumpkin,nbt={Age: 20s}] at @s run particle flame ~ ~ ~ 1.5 2 1.5 0 30
execute as @e[tag=prot_pumpkin,nbt={Age: 40s}] at @s run playsound minecraft:block.note_block.hat master @a[distance=..10] ~ ~ ~ 0.5 1
execute as @e[tag=prot_pumpkin,nbt={Age: 40s}] at @s run particle flame ~ ~ ~ 1.5 2 1.5 0 30
execute as @e[tag=prot_pumpkin,nbt={Age: 60s}] at @s run playsound minecraft:item.shield.block master @a[distance=..10] ~ ~ ~ 0.5 1
execute as @e[tag=prot_pumpkin,nbt={Age: 60s}] at @s run setblock ~ ~2 ~ minecraft:shroomlight
execute as @e[tag=prot_pumpkin,nbt={Age: 60s}] at @s run particle large_smoke ~ ~ ~ 2 2 2 0 20
execute as @e[tag=prot_pumpkin,nbt={Age: 60s}] at @s run data merge entity @s {NoGravity: 1b}
execute as @e[tag=prot_pumpkin,nbt={Age: 60s}] run function ogplus:jackolantern/pumpkin_load
# Effect
execute as @e[tag=prot_pumpkin] at @s run effect clear @a[distance=..3] slowness
execute as @e[tag=prot_pumpkin] at @s run effect clear @a[distance=..3] wither
execute as @e[tag=prot_pumpkin] at @s run effect clear @a[distance=..3] hunger
execute as @e[tag=prot_pumpkin] at @s run effect clear @a[distance=..3] blindness
execute as @e[tag=prot_pumpkin] at @s run effect give @a[distance=..3] saturation 3 1 true
execute as @e[tag=prot_pumpkin] at @s run kill @e[type=item,distance=..7,nbt={Item: {id: "minecraft:pumpkin_seeds"}}]
execute as @e[tag=prot_pumpkin] at @s run kill @e[type=item,distance=..7,nbt={Item: {id: "minecraft:carved_pumpkin"}}]
execute as @e[tag=prot_pumpkin] at @s run kill @e[type=item,distance=..7,nbt={Item: {id: "minecraft:pumpkin"}}]
execute as @e[tag=prot_pumpkin] at @s run kill @e[type=item,distance=..7,nbt={Item: {id: "minecraft:shroomlight"}}]
# Water Kills
execute as @e[tag=prot_pumpkin] at @s if block ~ ~ ~ water run particle smoke ~ ~1 ~ 0.5 1 0.5 0.1 10
execute as @e[tag=prot_pumpkin] at @s if block ~ ~ ~ water run playsound block.fire.extinguish master @a[distance=..10] ~ ~ ~ 0.5 1
execute as @e[tag=prot_pumpkin] at @s if block ~ ~ ~ water run function ogplus:jackolantern/pumpkin_unload
execute as @e[tag=prot_pumpkin] at @s if block ~ ~ ~ water run kill @s
# Unload
execute as @e[tag=prot_pumpkin,nbt={Age: 400s}] at @s run particle poof ~ ~ ~ 2 2 2 0 20
execute as @e[tag=prot_pumpkin,nbt={Age: 400s}] at @s run setblock ~ ~2 ~ minecraft:air
execute as @e[tag=prot_pumpkin,nbt={Age: 400s}] at @s run playsound minecraft:entity.chicken.egg master @a[distance=..10] ~ ~ ~ 0.5 1
execute as @e[tag=prot_pumpkin,nbt={Age: 400s}] run function ogplus:jackolantern/pumpkin_unload
execute as @e[tag=prot_pumpkin,nbt={Age: 400s}] run kill @s


## Demon Pocket pocket_dimension

##Enderian Prince Royal Presence
execute as @e[type=#ogplus:end_mobs,team=!royalty] run team join royalty @s
execute as @e[type=#ogplus:iron_golem,team=!iron_golem] run team join iron_golem @s
execute as @e[type=#ogplus:hostile_mobs,team=!hostile] run team join hostile @s

##Iron Golem Request
execute as @e[type=item,nbt={Item:{tag:{ironGolemSummon:1b}}}] at @s unless entity @a[team=iron_golem,distance=..5] run function ogplus:iron_golem/summoned_defense/request
execute as @a[team=iron_golem,tag=requested,scores={ironGolemRequest=1}] at @s run function ogplus:iron_golem/summoned_defense/accept
execute as @a[team=iron_golem,tag=requested,scores={ironGolemRequest=2}] at @s run function ogplus:iron_golem/summoned_defense/deny