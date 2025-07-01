
function dwarves_vs_zombies:start_game_carve
execute at @a[tag=load_leader,limit=1] run tp @e[name="dwarves_vs_zombies__load_marker"] ~25 ~ ~
function dwarves_vs_zombies:start_game_carve
execute at @a[tag=load_leader,limit=1] run tp @e[name="dwarves_vs_zombies__load_marker"] ~-25 ~ ~
function dwarves_vs_zombies:start_game_carve
execute at @a[tag=load_leader,limit=1] run tp @e[name="dwarves_vs_zombies__load_marker"] ~ ~ ~25
function dwarves_vs_zombies:start_game_carve
execute at @a[tag=load_leader,limit=1] run tp @e[name="dwarves_vs_zombies__load_marker"] ~ ~ ~-2
function dwarves_vs_zombies:start_game_carve
execute at @a[tag=load_leader,limit=1] run spreadplayers ~ ~ 0 30 false @e[name="dwarves_vs_zombies__load_marker"]
function dwarves_vs_zombies:start_game_carve
execute at @a[tag=load_leader,limit=1] run spreadplayers ~ ~ 0 40 false @e[name="dwarves_vs_zombies__load_marker"]
function dwarves_vs_zombies:start_game_carve
execute at @a[tag=load_leader,limit=1] run spreadplayers ~ ~ 0 50 false @e[name="dwarves_vs_zombies__load_marker"]
function dwarves_vs_zombies:start_game_carve
execute at @a[tag=load_leader,limit=1] run spreadplayers ~ ~ 0 50 false @e[name="dwarves_vs_zombies__load_marker"]
function dwarves_vs_zombies:start_game_carve
execute at @a[tag=load_leader,limit=1] run spreadplayers ~ ~ 0 50 false @e[name="dwarves_vs_zombies__load_marker"]
function dwarves_vs_zombies:start_game_carve
execute at @a[tag=load_leader,limit=1] run spreadplayers ~ ~ 0 50 false @e[name="dwarves_vs_zombies__load_marker"]
function dwarves_vs_zombies:start_game_carve
tp @e[name="dwarves_vs_zombies__load_marker"] @a[tag=load_leader,limit=1]
execute at @e[name="dwarves_vs_zombies__load_marker"] run summon marker ~ ~ ~ {CustomName:[{text:"dwarves_vs_zombies__load_core"}]}
scoreboard players set count structloaded 0
execute at @e[name="dwarves_vs_zombies__load_core"] run tp @e[name="dwarves_vs_zombies__load_marker"] ~ ~100 ~
execute at @e[name="dwarves_vs_zombies__load_core"] run place template dwarves_vs_zombies:dwarf_core ~-2 ~-10 ~-2
schedule function dwarves_vs_zombies:carve_halls 4t
schedule function dwarves_vs_zombies:start_game_7 6s