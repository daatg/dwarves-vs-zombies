effect clear @s
effect give @s darkness 3 0 true
effect give @s blindness 2 0 true
clear @s
say hi
gamemode adventure @s
attribute @s block_interaction_range base set 4.5
tag @s add spawning
tp @s @e[tag=dwarves_vs_zombies__dwarf_center,limit=1,sort=nearest]
execute at @a[tag=lich] as @a[tag=lich] run function dwarves_vs_zombies:mobs/lich/become_flying_2
scoreboard players set @a[tag=lich] lich_refill_1 400
scoreboard players set @a[tag=lich] lich_refill_2 1800
execute at @a[tag=creeper] as @a[tag=creeper] run function dwarves_vs_zombies:mobs/creeper/setup
execute at @a[tag=zombie] as @a[tag=zombie] run function dwarves_vs_zombies:mobs/zombie/setup
execute at @a[tag=broodmother] as @a[tag=broodmother] run function dwarves_vs_zombies:mobs/broodmother/setup