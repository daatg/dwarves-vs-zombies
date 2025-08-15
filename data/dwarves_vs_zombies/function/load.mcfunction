gamerule commandBlockOutput false
gamerule keepInventory true
gamerule doVinesSpread false
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doImmediateRespawn true
gamerule doInsomnia false
team add dwarves {"text":"Dwarves"}
team add zombies {"text":"Zombies"}
team modify dwarves friendlyFire false
team modify dwarves color blue
team modify zombies seeFriendlyInvisibles false
team modify zombies nametagVisibility hideForOtherTeams
team modify zombies deathMessageVisibility hideForOtherTeams
team modify zombies color dark_green
team modify zombies friendlyFire false
execute as @a run attribute @s block_interaction_range base set 4.5
execute as @a run attribute @s entity_interaction_range base set 3
execute as @a run attribute @s scale base set 1
execute as @a run attribute @s step_height base set 0.6
execute as @a run attribute @s movement_speed base set 0.1
execute as @a run attribute @s max_health base set 20
execute as @a run attribute @s knockback_resistance base set 0
execute as @a run attribute @s attack_speed base set 4
execute as @a run attribute @s attack_knockback base set 0
execute as @a run attribute @s attack_damage base set 1
execute as @a run attribute @s armor base set 0
execute as @a run attribute @s armor_toughness base set 0

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
scoreboard objectives add blood_2 dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add health health
scoreboard objectives add food food
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add damage_taken minecraft.custom:minecraft.damage_taken
scoreboard players set count blood_2 0
scoreboard players set count playercount 0
scoreboard players set count structloaded 0
scoreboard players set count runecountsm 0
scoreboard players set count runecountlg 0
scoreboard players set count triangulate_EAX 0
scoreboard players set count triangulate_HOLD 0
scoreboard players set count triangulate_200 200
scoreboard players set count triangulate_sign -1
scoreboard players set count triangulate_CMP 0
scoreboard players set count damage_dealt 0
bossbar add dwarves_vs_zombies:blood_1 {"text":"Blood Collected for Level II","color":"red"}
bossbar set dwarves_vs_zombies:blood_1 visible true
bossbar set dwarves_vs_zombies:blood_1 color red
bossbar set dwarves_vs_zombies:blood_1 style notched_20
bossbar set dwarves_vs_zombies:blood_1 max 200
bossbar add dwarves_vs_zombies:blood_2 {"text":"Blood Collected for Level III","color":"red"}
bossbar set dwarves_vs_zombies:blood_2 visible true
bossbar set dwarves_vs_zombies:blood_2 color red
bossbar set dwarves_vs_zombies:blood_2 style notched_20
bossbar set dwarves_vs_zombies:blood_2 max 200

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