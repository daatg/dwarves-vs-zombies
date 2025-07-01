playsound minecraft:item.totem.use master @a ~ ~ ~ 1.0 0.5
execute as @a[team=dwarves] run execute positioned as @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1.0 0.5
execute as @a[team=dwarves] run execute positioned as @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1.0 0.5
scoreboard players set @a[team=dwarves,scores={level=1..2}] level 3
title @a[team=dwarves] title {"text":"Marhsal II","color":"gold"}
title @a[team=dwarves] subtitle {"text":"A bonfire in your blood.","color":"gold"}