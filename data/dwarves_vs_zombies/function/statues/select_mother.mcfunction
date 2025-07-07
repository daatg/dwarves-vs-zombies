title @s title {"text":"The Mother","color":"dark_purple"}
title @s subtitle {"text":"Towards a greater army.","color":"gray"}
playsound block.trial_spawner.spawn_item_begin master @s ~ ~ ~
playsound entity.parrot.imitate.silverfish master @s ~ ~ ~
playsound block.amethyst_block.break master @s ~ ~ ~
playsound item.mace.smash_air master @s ~ ~ ~ 0.7 1.2
playsound ambient.warped_forest.mood master @s ~ ~ ~ 1.0 2.0
playsound ambient.soul_sand_valley.mood master @s ~ ~ ~ 1.0 2.0
title @s actionbar {"text":"Selected!","color":"gray"}
tag @s remove creeper
tag @s add broodmother
tag @s remove zombie
execute at @e[tag=dwarves_vs_zombies__class_select_mother] run particle infested ~ ~1 ~ 0.7 1 0.7 0.2 20
advancement revoke @s only dwarves_vs_zombies:select_mother