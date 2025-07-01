title @a subtitle {"text":"Landing day","color":"dark_gray"}
effect give @a minecraft:darkness 10 0 true
effect give @a minecraft:blindness 10 0 true
execute if data storage dwarves_vs_zombies:start_sequence {Loading:true} run tp @a @e[name="dwarves_vs_zombies__load_marker",limit=1]
execute as @a run execute at @s run playsound entity.warden.heartbeat master @s
stopsound @a * minecraft:ambient.soul_sand_valley.loop 


schedule function dwarves_vs_zombies:start_game_6 1t