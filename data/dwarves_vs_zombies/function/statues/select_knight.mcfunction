title @s title {"text":"The Servant","color":"dark_green"}
title @s subtitle {"text":"A body in motion.","color":"gray"}
playsound minecraft:entity.zombie.hurt master @s ~ ~ ~ 0.5 0.6
playsound item.mace.smash_ground_heavy master @s ~ ~ ~
playsound item.armor.equip_netherite master @s ~ ~ ~ 1.0 0.5
title @s actionbar {"text":"Selected!","color":"gray"}
tag @s remove creeper
tag @s remove broodmother
tag @s add zombie
execute at @e[tag=dwarves_vs_zombies__class_select_knight] run particle large_smoke ~ ~1 ~ 0.7 1 0.7 0 40
advancement revoke @s only dwarves_vs_zombies:select_knight