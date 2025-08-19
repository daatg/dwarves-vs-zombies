execute at @a[tag=lich] positioned ~ 4 ~ run function dwarves_vs_zombies:place_monster_spawn
execute at @a[tag=lich] positioned ~ 4 ~ run spawnpoint @a ~ 4 ~
execute at @a[tag=lich] run spawnpoint @a[tag=lich] ~ 200 ~
effect clear @a[tag=lich] blindness
effect clear @a[tag=lich] darkness
effect give @a[tag=lich] night_vision infinite 0 true
effect give @a[tag=lich] blindness 2 0 true
function dwarves_vs_zombies:mobs/lich_setup