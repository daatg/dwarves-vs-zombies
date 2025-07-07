effect clear @s
effect give @s darkness 3 0 true
effect give @s blindness 2 0 true
clear @s
gamemode adventure @s
tag @s add spawning
tp @s @e[tag=dwarves_vs_zombies__dwarf_center,limit=1,sort=nearest]
execute at @a[tag=lich] as @a[tag=lich] run function dwarves_vs_zombies:mobs/lich_setup
execute at @a[tag=creeper] as @a[tag=creeper] run function dwarves_vs_zombies:mobs/creeper/setup
execute at @a[tag=zombie] as @a[tag=zombie] run function dwarves_vs_zombies:mobs/zombie/setup
execute at @a[tag=broodmother] as @a[tag=broodmother] run function dwarves_vs_zombies:mobs/broodmother/setup