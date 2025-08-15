gamemode adventure @s
stopsound @a * entity.player.burp
effect clear @s invisibility
tp @s @e[tag=dwarves_vs_zombies__lich_display,limit=1]
attribute @s scale base set 1
attribute @s minecraft:block_interaction_range base set 4.5
attribute @s minecraft:block_interaction_range base set 3
clear @s
function dwarves_vs_zombies:mobs/lich/ground
attribute @s block_interaction_range base set 4.0
attribute @s entity_interaction_range base set 2.0
playsound minecraft:ambient.basalt_deltas.mood master @a ~ ~ ~ 1 1.0
playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 0.5 0.9
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 0.9