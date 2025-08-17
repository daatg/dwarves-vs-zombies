stopsound @a * entity.player.burp
advancement revoke @s only dwarves_vs_zombies:abilities/lich/vexes
clear @s feather
particle soul ~ ~ ~ 0.4 0.4 0.4 0.04 20
playsound entity.elder_guardian.curse master @a ~ ~ ~ 1.0 1.2
playsound entity.elder_guardian.curse master @a ~ ~ ~ 1.0 1.25
playsound entity.elder_guardian.curse master @a ~ ~ ~ 1.0 1.3
summon vex ~ ~ ~ {LifeTicks:20,Silent:1b,Tags:["dwarves_vs_zombies__banshee"],Team:zombies}
summon vex ~ ~ ~ {LifeTicks:20,Silent:1b,Tags:["dwarves_vs_zombies__banshee"],Team:zombies}