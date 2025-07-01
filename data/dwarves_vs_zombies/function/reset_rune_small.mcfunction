execute as @a[team=dwarves] run execute positioned as @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1.0 0.5
execute as @a[team=dwarves] run execute positioned as @s run playsound ambient.warped_forest.mood master @s
scoreboard players set @a[team=dwarves,scores={level=1..3}] level 1
schedule function dwarves_vs_zombies:reset_rune 1t