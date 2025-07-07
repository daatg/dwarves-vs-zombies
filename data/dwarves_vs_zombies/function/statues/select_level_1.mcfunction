playsound item.mace.smash_air master @s ~ ~ ~ 1.0 0.9
title @s actionbar {"text":"Level I","color":"gray"}
scoreboard players set @s level 1
execute at @e[tag=dwarves_vs_zombies__select_level_1] run particle flame ~ ~0.5 ~ 0.15 0.15 0.15 0 3
advancement revoke @s only dwarves_vs_zombies:select_level_1