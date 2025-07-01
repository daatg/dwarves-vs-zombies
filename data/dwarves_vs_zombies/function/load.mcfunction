gamerule commandBlockOutput false
gamerule keepInventory true
gamerule doVinesSpread false
gamerule doMobLoot false
gamerule doMobSpawning false
team add dwarves {"text":"Dwarves"}
team add zombies {"text":"Zombies"}
team modify dwarves friendlyFire false
team modify dwarves color blue
team modify zombies seeFriendlyInvisibles false
team modify zombies nametagVisibility hideForOtherTeams
team modify zombies deathMessageVisibility hideForOtherTeams
team modify zombies color dark_green
team modify zombies friendlyFire false
scoreboard objectives add level dummy 
scoreboard objectives add structloaded dummy 
scoreboard objectives add playercount dummy
scoreboard objectives add runecountsm dummy
scoreboard objectives add runecountlg dummy
scoreboard objectives add triangulate_EAX dummy
scoreboard objectives add triangulate_HOLD dummy
scoreboard objectives add triangulate_200 dummy
scoreboard objectives add triangulate_sign dummy
scoreboard objectives add triangulate_CMP dummy
scoreboard objectives add creeper_beep dummy
scoreboard objectives add creeper_refill dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add health health
scoreboard players set count playercount 0
scoreboard players set count structloaded 0
scoreboard players set count runecountsm 0
scoreboard players set count runecountlg 0
scoreboard players set count triangulate_EAX 0
scoreboard players set count triangulate_HOLD 0
scoreboard players set count triangulate_200 200
scoreboard players set count triangulate_sign -1
scoreboard players set count triangulate_CMP 0
team leave @a
tag @a remove builder
tag @a remove fletcher
tag @a remove smithy
tag @a remove brewer

tag @a remove creeper
tag @a remove lich
tag @a remove spawning
tag @a remove broodmother
scoreboard players set @a level 1
execute as @a run scoreboard players add count playercount 1
schedule function dwarves_vs_zombies:tick 1t replace