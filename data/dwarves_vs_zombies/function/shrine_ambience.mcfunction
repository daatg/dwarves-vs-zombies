playsound minecraft:entity.elder_guardian.ambient ambient @a ~ ~ ~ 0.15 0.8
execute if function dwarves_vs_zombies:check_rune_small run particle ash ~ ~5.5 ~ 0 0 0 1 1
execute if function dwarves_vs_zombies:check_rune_small unless function dwarves_vs_zombies:check_rune_large run particle soul ~ ~5.8 ~ 0 0 0 0 1
execute if function dwarves_vs_zombies:check_rune_large run particle end_rod ~ ~5.8 ~ 0 0 0 0 1
execute if function dwarves_vs_zombies:check_rune_small run playsound minecraft:entity.elder_guardian.ambient ambient @a ~ ~ ~ 0.06 1.2
execute if function dwarves_vs_zombies:check_rune_large run playsound minecraft:entity.elder_guardian.ambient ambient @a ~ ~ ~ 0.08 1.5
execute if function dwarves_vs_zombies:check_rune_small run schedule function dwarves_vs_zombies:reset_rune_small 2t replace
execute if function dwarves_vs_zombies:check_rune_large run schedule function dwarves_vs_zombies:reset_rune_large 2t replace
execute if score @a[limit=1,team=dwarves] level matches 0..1 if function dwarves_vs_zombies:check_rune_small run function dwarves_vs_zombies:start_rune_small
execute if score @a[limit=1,team=dwarves] level matches 0..2 if function dwarves_vs_zombies:check_rune_large run function dwarves_vs_zombies:start_rune_large
