gamemode adventure @s
advancement revoke @s only dwarves_vs_zombies:abilities/lich/manifest
stopsound @a * entity.player.burp
effect clear @s invisibility
effect give @s night_vision infinite 0 true
# tp @s @e[tag=dwarves_vs_zombies__lich_display,limit=1]
attribute @s scale base set 1
attribute @s minecraft:block_interaction_range base set 4.5
attribute @s minecraft:block_interaction_range base set 3
execute as @a[tag=lich] run attribute @s attack_damage base set 7.0
clear @s
attribute @s block_interaction_range base set 4.0
attribute @s entity_interaction_range base set 2.0
playsound minecraft:ambient.basalt_deltas.mood master @a ~ ~ ~ 1 1.0
playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 0.5 0.9
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 0.9
schedule function dwarves_vs_zombies:mobs/lich/ground 1t