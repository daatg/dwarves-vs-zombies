effect give @s darkness 3 0 true
effect give @s invisibility 2 0 true
item replace entity @a[tag=lich] armor.head with minecraft:air
clear @s
stopsound @a * entity.player.burp
advancement revoke @s only dwarves_vs_zombies:abilities/lich/vanish
schedule function dwarves_vs_zombies:mobs/lich/become_flying_2 1.5s
particle falling_lava ~ ~0.2 ~ 0.25 0.1 0.25 0.01 200
gamemode creative @a[tag=lich]
attribute @a[tag=lich,limit=1] scale base set 1
attribute @a[tag=lich,limit=1] block_interaction_range base set -1.0
attribute @a[tag=lich,limit=1] entity_interaction_range base set -2.5