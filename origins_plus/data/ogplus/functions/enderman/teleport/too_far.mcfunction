tellraw @s [{"text":"Your powers can't reach that far...","color":"gray","italic": true},{"text": " (Cooldown Refunded)","color": "dark_gray"}]
execute at @s run playsound minecraft:entity.enderman.hurt hostile @a ~ ~ ~ 0.25 1.25
execute as @s run scoreboard players set @s refundCooldown 140
#execute if block ~ ~1 ~ #ogplus:tele_legal run tp ~ ~1 ~
#playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.5 1