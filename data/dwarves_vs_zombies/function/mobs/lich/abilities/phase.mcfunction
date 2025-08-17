gamemode spectator @a[tag=lich]
advancement revoke @s only dwarves_vs_zombies:abilities/lich/phase
stopsound @a * entity.player.burp
tag @a[tag=lich] add phasing
effect give @a[tag=lich] blindness 2 0 true
execute at @a[tag=lich] run playsound minecraft:entity.camel.step master @a ~ ~ ~ 2.0 0.7
execute at @a[tag=lich] run playsound minecraft:entity.vex.ambient master @a ~ ~ ~ 1 0.6
execute at @a[tag=lich] run playsound minecraft:ambient.warped_forest.mood master @a ~ ~ ~ 1 1.0
execute at @a[tag=lich] run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1.0 0.61
execute at @a[tag=lich] run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1.0 0.6
schedule function dwarves_vs_zombies:mobs/lich/abilities/phase_2 1s