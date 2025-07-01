effect give @s night_vision infinite 0 true
effect give @s speed infinite 1 true
effect give @s invisibility infinite 0 true
clear @s
execute at @s run summon block_display ~ ~ ~ {teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,1.5f,0.25f],translation:[-0.25f,-0.125f,0f]},block_state:{Name:"minecraft:red_concrete"},Tags:["dwarves_vs_zombies__lich_display"]}
execute at @s run summon block_display ~ ~ ~ {teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],translation:[-0.25f,1.375f,-0.125f]},block_state:{Name:"minecraft:red_concrete"},Tags:["dwarves_vs_zombies__lich_display"]}
execute at @s run summon block_display ~ ~ ~ {teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.75f,0.25f],translation:[0.25f,0.625f,0f]},block_state:{Name:"minecraft:red_concrete"},Tags:["dwarves_vs_zombies__lich_display"]}
execute at @s run summon block_display ~ ~ ~ {teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.75f,0.25f],translation:[-0.5f,0.625f,0f]},block_state:{Name:"minecraft:red_concrete"},Tags:["dwarves_vs_zombies__lich_display"]}