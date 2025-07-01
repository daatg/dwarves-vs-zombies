execute if score count structloaded matches 0 run place template dwarves_vs_zombies:dwarf_hall_initial ^-6 ^-9 ^1 180 none
execute if score count structloaded matches 1 run place template dwarves_vs_zombies:dwarf_hall_air ^-6 ^-9 ^1 180 none
execute if score count structloaded matches 2 run place template dwarves_vs_zombies:dwarf_hall ^-6 ^-9 ^1 180 none
execute if score count structloaded matches 0 run schedule function dwarves_vs_zombies:finish_structure_load 2t append