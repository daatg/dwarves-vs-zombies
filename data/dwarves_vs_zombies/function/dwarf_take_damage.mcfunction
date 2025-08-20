scoreboard players operation @s damage_taken /= count playercount
execute if entity @s[team=dwarves] run scoreboard players operation count damage_dealt += @s damage_taken
advancement revoke @s only dwarves_vs_zombies:dwarf_take_damage