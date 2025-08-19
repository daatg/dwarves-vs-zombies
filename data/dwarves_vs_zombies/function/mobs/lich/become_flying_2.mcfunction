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
effect give @a[tag=lich] night_vision infinite 0 true
execute store result score count current_dwarves run team list dwarves
scoreboard players add count current_dwarves 1
scoreboard players operation count current_dwarves -= count playercount
# If there are no dwarves dead other than the lich
execute unless score count current_dwarves matches ..-1 run function dwarves_vs_zombies:mobs/lich/abilities/items/manifest
execute if score count damage_dealt matches 400.. run function dwarves_vs_zombies:mobs/lich/abilities/items/manifest

function dwarves_vs_zombies:mobs/lich/abilities/items/vanished/get_random_tier_1
execute if score count damage_dealt matches 200.. run function dwarves_vs_zombies:mobs/lich/abilities/items/vanished/get_random_tier_2