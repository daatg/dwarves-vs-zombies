effect clear @s
effect give @s instant_health 1 10 true
effect give @s saturation 1 20 true
effect give @s darkness 2 0 true
effect give @s blindness 1 0 true
clear @s
gamemode adventure @s
tag @s add spawning
tp @s @e[tag=dwarves_vs_zombies__dwarf_center,limit=1,sort=nearest]
execute at @a[tag=lich] as @a[tag=lich] run function dwarves_vs_zombies:mobs/lich_setup
execute at @a[tag=creeper] as @a[tag=creeper] run function dwarves_vs_zombies:mobs/creeper/setup