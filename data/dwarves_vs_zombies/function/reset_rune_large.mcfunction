execute as @a[team=dwarves] run execute positioned as @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1.0 0.7
execute as @a[team=dwarves] run execute positioned as @s run playsound ambient.warped_forest.mood master @s
scoreboard players set @a[team=dwarves,scores={level=3}] level 2
schedule function dwarves_vs_zombies:reset_rune 1t