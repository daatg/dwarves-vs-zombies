title @a title {"text":"Go Bid the Soldiers Dead","color": "dark_red"}
title @a subtitle {"text":"The dwarf colony has been vanquished.","color": "gray"}
execute at @a as @a run playsound entity.warden.death master @s ~ ~ ~ 2.0 0.6
execute at @a as @a run playsound block.bell.use master @s ~ ~ ~ 2.0 0.6
data merge storage dwarves_vs_zombies:generic {ActiveGame:0b}
schedule function dwarves_vs_zombies:zombies_win_2 6s