playsound item.mace.smash_ground master @s ~ ~ ~ 1.0 1.15
title @s actionbar {"text":"Level II","color":"gray"}
scoreboard players set @s level 2
execute at @e[tag=dwarves_vs_zombies__select_level_2] run particle flame ~ ~0.5 ~ 0.15 0.15 0.15 0 3
advancement revoke @s only dwarves_vs_zombies:select_level_2