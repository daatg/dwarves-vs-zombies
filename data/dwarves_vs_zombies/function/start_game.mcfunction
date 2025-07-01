function dwarves_vs_zombies:load
kill @e[type=marker,name="dwarves_vs_zombies__load_marker"]
kill @e[type=marker,tag=dwarves_vs_zombies__dwarf_center]
clear @a
effect clear @a
tag @a remove builder
tag @a remove smithy
tag @a remove fletcher
tag @a remove brewer
execute as @a run execute positioned as @s run playsound block.beacon.deactivate master @s ~ ~ ~ 0.2 0.5
execute as @a run execute positioned as @s run playsound ambient.warped_forest.mood master @s
effect give @a minecraft:darkness 16 0 true
effect give @a minecraft:instant_health 1 20 true
effect give @a minecraft:saturation 1 20 true
weather clear 100d
gamemode spectator @a
time set 13000
schedule function dwarves_vs_zombies:start_game_b 0.25s