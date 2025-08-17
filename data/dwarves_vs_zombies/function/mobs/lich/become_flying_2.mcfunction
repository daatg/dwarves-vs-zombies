execute at @a[tag=lich,limit=1] run spreadplayers ~ ~ 0 5 false @a[tag=lich]
execute at @a[tag=lich,limit=1] run tp @a[tag=lich] ~ 128 ~
gamemode spectator @a[tag=lich]
gamemode creative @a[tag=lich]
attribute @a[tag=lich,limit=1] scale base set 1
attribute @a[tag=lich,limit=1] block_interaction_range base set -1.0
attribute @a[tag=lich,limit=1] entity_interaction_range base set -2.5
effect give @a[tag=lich] invisibility infinite 0 true
item replace entity @a[tag=lich] armor.head with minecraft:air
clear @a[tag=lich]
function dwarves_vs_zombies:mobs/lich/abilities/items/manifest
function dwarves_vs_zombies:mobs/lich/abilities/items/vanished/get_random_tier_1
function dwarves_vs_zombies:mobs/lich/abilities/items/vanished/get_random_tier_1
