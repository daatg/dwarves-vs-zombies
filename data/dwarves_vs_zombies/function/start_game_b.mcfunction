data merge storage dwarves_vs_zombies:start_sequence {Loading:1b}
tp @a ~ 1000 ~
tag @r add load_leader
execute in dwarves_vs_zombies:citadel run spreadplayers 0 0 0 1000000 false @a[tag=load_leader]
execute at @a[tag=load_leader,limit=1] run summon marker ~ ~ ~ {Rotation:[70f,20f],CustomName:[{text:"dwarves_vs_zombies__load_marker"}]}

schedule function dwarves_vs_zombies:start_game_2 2s