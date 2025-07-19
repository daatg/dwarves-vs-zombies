time set 23500
effect clear @a
tp @a @e[name="dwarves_vs_zombies__load_core",limit=1]
execute at @r run summon marker ~ ~ ~ {Tags:["dwarves_vs_zombies__dwarf_center"]}
execute at @r run spawnpoint @a
execute at @r run setworldspawn ~ ~ ~
effect give @a darkness 3 0 true
effect give @a slow_falling 3 0 true
data merge storage dwarves_vs_zombies:start_sequence {Loading:0b}
gamemode survival @a
kill @e[type=marker,name="dwarves_vs_zombies__load_marker"]
kill @e[type=marker,name="dwarves_vs_zombies__load_core"]
tag @a remove load_leader
scoreboard players set count structloaded 2
team join dwarves @a
function dwarves_vs_zombies:assign_roles
schedule clear dwarves_vs_zombies:night_2
schedule clear dwarves_vs_zombies:morning_2
schedule function dwarves_vs_zombies:night_1 13500t replace