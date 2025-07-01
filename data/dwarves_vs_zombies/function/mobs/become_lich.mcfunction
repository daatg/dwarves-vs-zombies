gamemode spectator @s
clear @s
effect clear @s
kill @e[tag=dwarves_vs_zombies__lich_display]
execute at @s as @s align xyz run tp @s ~ 10 ~ 0 45
execute at @s align xyz run summon marker ~0.5 ~ ~1.5 {Tags:["dwarves_vs_zombies__become_lich"],Rotation:[0,45]}
execute at @s align xyz run summon marker ~0.5 ~-1 ~3 {Tags:["dwarves_vs_zombies__lich_body"]}
execute at @s align xyz run summon block_display ~ ~-1 ~3 {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.25f,1.5f],translation:[0.25f,0.375f,-0.5f]},block_state:{Name:"minecraft:red_concrete"},Tags:["dwarves_vs_zombies__lich_body_torso"]}
execute at @s align xyz run summon block_display ~ ~-1 ~3 {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],translation:[0.25f,0.25f,1.0f]},block_state:{Name:"minecraft:red_concrete"},Tags:["dwarves_vs_zombies__lich_body_torso"]}
execute at @s align xyz run summon block_display ~ ~-1 ~3 {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.75f],translation:[0.75f,0.375f,0.25f]},block_state:{Name:"minecraft:red_concrete"},Tags:["dwarves_vs_zombies__lich_body_torso"]}
execute at @s align xyz run summon block_display ~ ~-1 ~3 {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.75f],translation:[0f,0.375f,0.25f]},block_state:{Name:"minecraft:red_concrete"},Tags:["dwarves_vs_zombies__lich_body_torso"]}

stopsound @s * minecraft:ambient.soul_sand_valley.loop
execute at @s as @s run fill ~-5 ~-4 ~-5 ~5 ~8 ~5 light[level=11]
execute at @s as @s run fill ~-5 ~-4 ~-5 ~5 ~-2 ~5 dirt
execute at @s as @s run fill ~-5 ~-1 ~-5 ~5 ~-1 ~5 grass_block
execute at @s as @s run fill ~ ~-1 ~4 ~0 ~4 ~4 mossy_cobblestone
execute at @s as @s run fill ~-1 ~3 ~4 ~1 ~3 ~4 mossy_cobblestone
execute at @s as @s run fill ~ ~-3 ~2 ~ ~-3 ~3 light[level=9]
execute at @s as @s run fill ~ ~-2 ~2 ~ ~-2 ~3 light[level=10]
execute at @s as @s run fill ~ ~-1 ~2 ~ ~-1 ~3 light[level=11]
execute at @s as @s run fill ~ ~0 ~2 ~ ~0 ~3 light[level=12]
team leave @s
team join zombies @s
execute if score count playercount matches 1..7 as @s[tag=builder] run tag @r[team=dwarves] add builder
execute if score count playercount matches 1..7 as @s[tag=builder] run tag @r[team=dwarves] add new
execute if score count playercount matches 1..7 as @s[tag=brewer] run tag @r[team=dwarves] add brewer
execute if score count playercount matches 1..7 as @s[tag=brewer] run tag @r[team=dwarves] add new
execute if score count playercount matches 1..7 as @s[tag=fletcher] run tag @r[team=dwarves] add fletcher
execute if score count playercount matches 1..7 as @s[tag=fletcher] run tag @r[team=dwarves] add new
execute if score count playercount matches 1..7 as @s[tag=smithy] run tag @r[team=dwarves] add smithy
execute if score count playercount matches 1..7 as @s[tag=smithy] run tag @r[team=dwarves] add new

tag @s remove builder
tag @s remove brewer
tag @s remove fletcher
tag @s remove smithy
tag @s add lich
effect give @s darkness infinite 0 true
effect give @s blindness infinite 0 true
execute at @s run playsound minecraft:item.goat_horn.sound.5 master @s ~ ~ ~ 1.0 0.6
title @a[team=zombies,tag=lich] title {"text":"A Knife To Your Own Throat","color":"dark_red"}
title @a[team=zombies,tag=lich] subtitle {"text":"","color":"dark_red"}
title @a[team=dwarves] title {"text":"","color":"dark_red"}
title @a[team=dwarves] subtitle {"text":"Something mad awakens...","color":"dark_red"}
schedule function dwarves_vs_zombies:mobs/become_lich_2 6s replace