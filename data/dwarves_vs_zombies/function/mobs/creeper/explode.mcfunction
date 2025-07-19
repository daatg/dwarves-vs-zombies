stopsound @s * entity.player.burp
effect clear @s invisibility
execute if score @s level matches ..1 run summon marker ~ ~ ~ {Tags:[dwarves_vs_zombies__creeper]}
execute if score @s level matches 2 run summon marker ~ ~ ~ {Tags:[dwarves_vs_zombies__creeper,dwarves_vs_zombies__creeper_lava]}

execute if score @s level matches 1..2 run setblock ~ ~1 ~ minecraft:light[level=15]
execute if score @s level matches 1..2 run scoreboard players set @e[tag=dwarves_vs_zombies__creeper,limit=1,sort=nearest] creeper_beep 10
execute if score @s level matches 1..2 run execute at @s run tp @e[type=marker,limit=1,sort=nearest] @s
execute if score @s level matches 1..2 run execute as @e[type=marker,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
execute if score @s level matches 1..2 run scoreboard players set shadow9379 creeper_beep 10
execute if score @s level matches 1..2 run gamemode spectator @s
execute if score @s level matches 1..2 run tp @s ^ ^ ^-5
execute if score @s level matches 1..2 run execute at @s run summon marker ~ ~ ~ {CustomName:[{text:"dwarves_vs_zombies__creeper_explode"}]}
execute if score @s level matches 1..2 run scoreboard players set @e[name=dwarves_vs_zombies__creeper_explode,limit=1,sort=nearest] creeper_beep 90
execute if score @s level matches 1..2 run execute at @s run tp @e[type=marker,name="dwarves_vs_zombies__creeper_explode",limit=1,sort=nearest] @s

execute if score @s level matches 3 run damage @s 3 explosion
execute if score @s level matches 3 run effect give @s resistance 1 4 true
execute if score @s level matches 3 run summon creeper ^ ^1 ^-0.1 {Team:"zombies",NoAI:1b,NoGravity:1b,Fuse:1,Invulnerable:1b,ExplosionRadius:3,ignited:1b}
execute if score @s level matches 3 run scoreboard players set @s creeper_refill 20