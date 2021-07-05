tellraw @a [{"text":"[Origins","color":"yellow"},{"text":"+","color":"green"},{"text":"] Reload Complete...","color":"yellow"}]

#init
scoreboard objectives add rayID dummy
scoreboard objectives add rayCount dummy
scoreboard objectives add scanCount dummy
scoreboard objectives add nearbyPlayers dummy
scoreboard objectives add refundCooldown dummy
scoreboard objectives add entityHealth dummy
scoreboard objectives add handCount dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add ironGolemRequest trigger
# static
scoreboard players set *rayMax rayCount 30
scoreboard players set *scanMax scanCount 70
scoreboard players set *laserMax scanCount 15
scoreboard players set *leftoversMax scanCount 6
# tag check
tag @a remove requested

# teams
team add royalty
team modify royalty friendlyFire false

team add iron_golem
team modify iron_golem friendlyFire false

team add hostile
team modify hostile friendlyFire false

team add undead

