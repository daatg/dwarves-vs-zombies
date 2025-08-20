execute at @a[tag=lich] run execute if block ~ ~-1 ~ #replaceable run tp @a[tag=lich] ~ ~-0.5 ~ ~ ~
execute at @a[tag=lich] run execute if block ~ ~-1 ~ #replaceable run effect give @a[tag=lich] slow_falling 1 0 true
execute at @a[tag=lich] run execute if block ~ ~-1 ~ #replaceable run particle smoke ~ ~-0.25 ~ 0.2 0.4 0.2 0 20
execute at @a[tag=lich] run execute if block ~ ~-1 ~ #replaceable run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 0.4 0.8
execute at @a[tag=lich] run execute if block ~ ~-1 ~ #replaceable run schedule function dwarves_vs_zombies:mobs/lich/ground 1t
execute at @a[tag=lich] run execute unless block ~ ~-1 ~ #replaceable run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 1.0
execute at @a[tag=lich] run execute unless block ~ ~-1 ~ #replaceable run particle smoke ~ ~ ~ 0.4 0.5 0.4 0.04 40
execute at @a[tag=lich] run execute unless block ~ ~-1 ~ #replaceable run clear @a[tag=lich]
execute at @a[tag=lich] run execute unless block ~ ~-1 ~ #replaceable run tag @a[tag=lich] add grounded
execute at @a[tag=lich] run execute unless block ~ ~-1 ~ #replaceable run item replace entity @a[tag=lich] armor.head with minecraft:red_concrete
execute at @a[tag=lich] run execute unless block ~ ~-1 ~ #replaceable run function dwarves_vs_zombies:mobs/lich/abilities/items/vanish
execute at @a[tag=lich] run execute unless block ~ ~-1 ~ #replaceable run function dwarves_vs_zombies:mobs/lich/abilities/items/manifested/get_random_tier_1