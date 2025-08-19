advancement revoke @s only dwarves_vs_zombies:abilities/lich/lights_out
stopsound @a * entity.player.burp
clear @s candle
fill ~-10 ~10 ~-10 ~10 ~-10 ~10 air replace fire
fill ~-10 ~10 ~-10 ~10 ~-10 ~10 air replace torch
fill ~-10 ~10 ~-10 ~10 ~-10 ~10 air replace glowstone
playsound minecraft:particle.soul_escape master @a ~ ~ ~ 2.0 0.8
playsound ambient.soul_sand_valley.additions master @a ~ ~ ~ 2.0 1.0
playsound ambient.warped_forest.mood master @a ~ ~ ~ 1.0 1.0
playsound entity.wither.spawn master @a ~ ~ ~ 0.1 0.4
playsound entity.wither.death master @a ~ ~ ~ 0.1 0.4
particle ash ~ ~ ~ 10 10 10 0 2000