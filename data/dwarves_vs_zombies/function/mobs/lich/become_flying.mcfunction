effect give @s darkness 3 0 true
stopsound @a * entity.player.burp
schedule function dwarves_vs_zombies:mobs/lich/become_flying_2 1.5s
particle falling_lava ~ ~0.2 ~ 0.25 0.1 0.25 0.01 200
tag @s remove grounded