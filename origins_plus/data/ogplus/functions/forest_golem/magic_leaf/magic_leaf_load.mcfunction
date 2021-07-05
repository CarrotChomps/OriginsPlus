summon minecraft:area_effect_cloud ~ ~-1 ~ {Tags:["magic_leaf"],Duration:90}
execute at @e[tag=magic_leaf,sort=nearest,limit=1] run fill ~-1 ~ ~ ~1 ~ ~ minecraft:oak_leaves[persistent=true] keep
execute at @e[tag=magic_leaf,sort=nearest,limit=1] run fill ~ ~ ~1 ~ ~ ~-1 minecraft:oak_leaves[persistent=true] keep