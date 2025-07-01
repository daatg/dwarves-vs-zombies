playsound minecraft:item.mace.smash_ground master @a ~ ~ ~ 2.0 1.0
execute as @a[team=dwarves] run execute positioned as @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1.0 0.5
execute as @a[team=dwarves] run execute positioned as @s run playsound minecraft:ambient.soul_sand_valley.additions master @s ~ ~ ~ 1.0 0.8
execute as @a[team=dwarves] run execute positioned as @s run playsound minecraft:ambient.soul_sand_valley.mood master @s ~ ~ ~ 1.0 0.8
scoreboard players set @a[team=dwarves,scores={level=1}] level 2
title @a[team=dwarves] title {"text":"Marhsal I","color":"gray"}
title @a[team=dwarves] subtitle {"text":"Heaven hears your plea.","color":"gray"}