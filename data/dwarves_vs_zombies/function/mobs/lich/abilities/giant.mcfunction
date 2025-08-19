advancement revoke @s only dwarves_vs_zombies:abilities/lich/giant
stopsound @a * entity.player.burp
clear @s bone
summon zombie ~ ~ ~ {Silent:1b,Health:400,Tags:["dwarves_vs_zombies__giant"],Team:zombies,attributes:[{id:scale,base:8f},{id:spawn_reinforcements,base:0.2f},{id:step_height,base:3f},{id:knockback_resistance,base:1f},{id:explosion_knockback_resistance,base:1f},{id:jump_strength,base:0.8f},{id:follow_range,base:48f},{id:movement_speed,base:0.18f},{id:attack_knockback,base:4f},{id:attack_damage,base:6f},{id:safe_fall_distance,base:30f},{id:max_health,base:400f}]}
scoreboard players set @e[tag=dwarves_vs_zombies__giant,sort=nearest,limit=1] giant_jump 400
spreadplayers ~ ~ 0 1 false @e[tag=dwarves_vs_zombies__giant,sort=nearest,limit=1]
playsound minecraft:item.goat_horn.sound.6 master @a ~ ~ ~ 1.4 0.6 0.5