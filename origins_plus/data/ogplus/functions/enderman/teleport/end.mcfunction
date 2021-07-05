execute if block ~ ~1 ~ #ogplus:tele_legal run tp ~ ~1 ~
execute as @s at @s run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.5 1
execute unless block ~ ~1 ~ #ogplus:tele_legal if block ^ ^ ^-1 #ogplus:tele_legal run tp ^ ^ ^-1.5