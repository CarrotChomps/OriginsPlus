summon minecraft:area_effect_cloud ~ ~-1 ~ {Tags:["frost_vine"],Duration:90}
execute at @e[tag=frost_vine,sort=nearest,limit=1] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:spruce_leaves[persistent=true] keep