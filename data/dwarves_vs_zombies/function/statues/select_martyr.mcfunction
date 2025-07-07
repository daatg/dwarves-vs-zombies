title @s title {"text":"The Martyr","color":"red"}
title @s subtitle {"text":"Immortal life.","color":"gray"}
playsound item.mace.smash_air master @s ~ ~ ~
playsound entity.allay.hurt master @s ~ ~ ~
playsound entity.lightning_bolt.thunder master @s ~ ~ ~
title @s actionbar {"text":"Selected!","color":"gray"}
tag @s add creeper
tag @s remove broodmother
tag @s remove zombie
execute at @e[tag=dwarves_vs_zombies__class_select_martyr] run particle explosion ~ ~1 ~ 0 0 0 0 1
execute at @e[tag=dwarves_vs_zombies__class_select_martyr] run particle white_smoke ~ ~1 ~ 0.7 1 0.7 0 20
advancement revoke @s only dwarves_vs_zombies:select_martyr