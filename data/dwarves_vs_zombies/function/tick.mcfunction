scoreboard players set count runecountsm 0
scoreboard players set count runecountlg 0

clear @a[tag=fletcher,tag=!builder] minecraft:stone_bricks
clear @a[tag=fletcher,tag=!builder] minecraft:mossy_stone_bricks
clear @a[tag=fletcher,tag=!builder] minecraft:cracked_stone_bricks
clear @a[tag=smithy,tag=!builder] minecraft:stone_bricks
clear @a[tag=smithy,tag=!builder] minecraft:mossy_stone_bricks
clear @a[tag=smithy,tag=!builder] minecraft:cracked_stone_bricks
clear @a[tag=brewer,tag=!builder] minecraft:stone_bricks
clear @a[tag=brewer,tag=!builder] minecraft:mossy_stone_bricks
clear @a[tag=brewer,tag=!builder] minecraft:cracked_stone_bricks

team join zombies @a[team=dwarves,scores={deaths=1..}]
team leave @a[team=dwarves,scores={deaths=1..}]
clear @a[scores={deaths=1..}]
execute as @a[team=zombies,scores={health=1..,deaths=1..}] run function dwarves_vs_zombies:mobs/reset
scoreboard players set @a[scores={health=1..}] deaths 0

execute as @a[team=zombies,scores={health=1..},tag=spawning] run function dwarves_vs_zombies:mobs/respawn
execute at @e[type=marker,tag=dwarves_vs_zombies__dwarf_center] run spreadplayers ~ ~ 0 100 false @a[team=zombies,tag=spawning,distance=..90]
execute at @e[type=marker,tag=dwarves_vs_zombies__dwarf_center] run execute at @a[team=zombies,scores={health=1..},tag=spawning,distance=90..] run playsound ambient.basalt_deltas.mood master @a ~ ~ ~
execute at @e[type=marker,tag=dwarves_vs_zombies__dwarf_center] run execute at @a[team=zombies,scores={health=1..},tag=spawning,tag=broodmother,distance=90..] run playsound entity.spider.step master @a ~ ~ ~
execute at @e[type=marker,tag=dwarves_vs_zombies__dwarf_center] run execute at @a[team=zombies,scores={health=1..},tag=spawning,tag=creeper,distance=90..] run playsound ambient.underwater.loop.additions.rare master @a ~ ~ ~
execute at @e[type=marker,tag=dwarves_vs_zombies__dwarf_center] run execute at @a[team=zombies,scores={health=1..},tag=spawning,tag=zombie,distance=90..] run playsound minecraft:block.gravel.break master @a ~ ~ ~
execute at @e[type=marker,tag=dwarves_vs_zombies__dwarf_center] run tag @a[team=zombies,scores={health=1..},tag=spawning,distance=90..] remove spawning


execute at @e[tag=lich] as @e[tag=lich] run tp @e[tag=dwarves_vs_zombies__lich_display] @s
execute at @e[tag=dwarves_vs_zombies__lich_display] as @e[tag=dwarves_vs_zombies__lich_display] run tp @s ~ ~ ~ ~ 0

execute if data storage dwarves_vs_zombies:start_sequence {Loading:1b} at @e[name="dwarves_vs_zombies__load_marker",limit=1] run tp @e[name="dwarves_vs_zombies__load_marker",limit=1] ~ ~0.01 ~
execute if data storage dwarves_vs_zombies:start_sequence {Loading:1b} run tp @a @e[name="dwarves_vs_zombies__load_marker",limit=1]

effect give @a[team=zombies] saturation 1 0 true

execute at @e[tag=dwarves_vs_zombies__become_lich] run tp @e[tag=dwarves_vs_zombies__become_lich] ~ ~0.01 ~
execute at @e[tag=dwarves_vs_zombies__lich_body] run tp @e[tag=dwarves_vs_zombies__lich_body] ~ ~0.01 ~
execute at @e[tag=dwarves_vs_zombies__lich_body] run tp @e[tag=dwarves_vs_zombies__lich_body_torso] ~-0.5 ~-0.5 ~-0.5
tp @a[tag=lich] @e[tag=dwarves_vs_zombies__become_lich,limit=1]

execute at @e[tag=dwarves_vs_zombies__creeper] run playsound minecraft:block.note_block.flute master @a ~ ~ ~ 1 2
execute at @e[name="dwarves_vs_zombies__creeper_explode"] as @e[name="dwarves_vs_zombies__creeper_explode"] run tp @p @s
execute as @e[name="dwarves_vs_zombies__creeper_explode",scores={creeper_beep=70}] run effect give @p darkness infinite 0 true
execute as @e[name="dwarves_vs_zombies__creeper_explode",scores={creeper_beep=45}] run effect give @p blindness infinite 0 true
execute as @e[name="dwarves_vs_zombies__creeper_explode",scores={creeper_beep=8}] run execute as @p[tag=creeper] run gamemode adventure @s
execute as @e[name="dwarves_vs_zombies__creeper_explode",scores={creeper_beep=8}] run execute as @p[tag=creeper] run execute at @s run tp @s ~ 1000 ~
execute as @e[name="dwarves_vs_zombies__creeper_explode",scores={creeper_beep=8}] run execute as @p[tag=creeper] run damage @s 999 explosion
execute as @e[name="dwarves_vs_zombies__creeper_explode",scores={creeper_beep=8}] run kill @s
scoreboard players remove @e[scores={creeper_beep=1..}] creeper_beep 1
execute as @e[tag=dwarves_vs_zombies__creeper] at @e[tag=dwarves_vs_zombies__creeper] run tp @s ~ ~0.02 ~
execute as @e[type=marker,name="dwarves_vs_zombies__creeper_explode"] at @e[type=marker,name="dwarves_vs_zombies__creeper_explode"] run tp @s ^ ^ ^-0.01
execute as @e[tag=dwarves_vs_zombies__creeper] at @e[tag=dwarves_vs_zombies__creeper] run particle minecraft:end_rod ^ ^ ^ 0 0 0 0.01 1
execute as @e[tag=dwarves_vs_zombies__creeper] at @e[tag=dwarves_vs_zombies__creeper] run particle minecraft:end_rod ^ ^0.3 ^ 0 0 0 0.01 1
execute as @e[tag=dwarves_vs_zombies__creeper] at @e[tag=dwarves_vs_zombies__creeper] run particle minecraft:end_rod ^ ^0.6 ^ 0 0 0 0.01 1
execute as @e[tag=dwarves_vs_zombies__creeper] at @e[tag=dwarves_vs_zombies__creeper] run particle minecraft:end_rod ^ ^0.9 ^ 0 0 0 0.01 1
execute as @e[tag=dwarves_vs_zombies__creeper] at @e[tag=dwarves_vs_zombies__creeper] run particle minecraft:end_rod ^ ^1.2 ^ 0 0 0 0.01 1
execute as @e[tag=dwarves_vs_zombies__creeper] at @e[tag=dwarves_vs_zombies__creeper] run particle minecraft:end_rod ^ ^1.5 ^ 0 0 0 0.01 1
execute as @e[tag=dwarves_vs_zombies__creeper] at @e[tag=dwarves_vs_zombies__creeper] run particle minecraft:end_rod ^ ^1.8 ^ 0 0 0 0.01 1
execute as @e[tag=dwarves_vs_zombies__creeper] at @e[tag=dwarves_vs_zombies__creeper] run particle minecraft:end_rod ^0.3 ^1.8 ^ 0 0 0 0.01 1
execute as @e[tag=dwarves_vs_zombies__creeper] at @e[tag=dwarves_vs_zombies__creeper] run particle minecraft:end_rod ^0.6 ^1.8 ^ 0 0 0 0.01 1
execute as @e[tag=dwarves_vs_zombies__creeper] at @e[tag=dwarves_vs_zombies__creeper] run particle minecraft:end_rod ^-0.3 ^1.8 ^ 0 0 0 0.01 1
execute as @e[tag=dwarves_vs_zombies__creeper] at @e[tag=dwarves_vs_zombies__creeper] run particle minecraft:end_rod ^-0.6 ^1.8 ^ 0 0 0 0.01 1
execute as @e[tag=dwarves_vs_zombies__creeper] at @e[tag=dwarves_vs_zombies__creeper] run particle minecraft:end_rod ^ ^2.1 ^ 0 0 0 0.01 1
execute as @e[tag=dwarves_vs_zombies__creeper] at @e[tag=dwarves_vs_zombies__creeper] run particle minecraft:end_rod ^ ^2.4 ^ 0 0 0 0.01 1
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=2}] run summon creeper ~ ~0.5 ~ {Team:"zombies",NoAI:1b,NoGravity:1b,Fuse:1,Invulnerable:1b,ExplosionRadius:5,ignited:1b}
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=1}] run fill ~ ~1 ~ ~ ~1 ~ air replace minecraft:light[level=15]
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=2}] run summon lightning_bolt ~ ~ ~
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=2}] run summon lightning_bolt ~1 ~ ~
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=2}] run summon lightning_bolt ~ ~ ~-2
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=2}] run summon lightning_bolt ~2 ~ ~
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=1},tag=dwarves_vs_zombies__creeper_lava] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:lava"},Motion:[0d,0.2d,0d],Fire:400s}
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=1},tag=dwarves_vs_zombies__creeper_lava] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:lava"},Motion:[0.05d,0.2d,0.05d],Fire:400s}
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=1},tag=dwarves_vs_zombies__creeper_lava] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:lava"},Motion:[-0.05d,-0.3d,0.025d],Fire:400s}
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=1},tag=dwarves_vs_zombies__creeper_lava] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:lava"},Motion:[0.05d,-0.15d,0.15d],Fire:400s}
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=1},tag=dwarves_vs_zombies__creeper_lava] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:lava"},Motion:[0d,0.35d,-0.125d],Fire:400s}
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=1},tag=dwarves_vs_zombies__creeper_lava] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:lava"},Motion:[-0.025d,-0.0d,-0.1d],Fire:400s}
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=1},tag=dwarves_vs_zombies__creeper_lava] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:lava"},Motion:[-0.075d,0.15d,-0.025d],Fire:400s}
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=1},tag=dwarves_vs_zombies__creeper_lava] run fill ~-2 ~-3 ~-3 ~2 ~2 ~3 minecraft:fire replace air
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=1},tag=dwarves_vs_zombies__creeper_lava] run fill ~-3 ~-3 ~-2 ~3 ~2 ~2 minecraft:fire replace air
execute at @e[tag=dwarves_vs_zombies__creeper] run playsound minecraft:ambient.warped_forest.mood master @a ~ ~ ~ 1.0 1
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=1}] run playsound minecraft:item.mace.smash_ground_heavy master @a ~ ~ ~ 2.0 1.5
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=14}] run playsound minecraft:block.bell.resonate master @a ~ ~ ~ 2.0 2
execute at @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=1..8}] run time add 12000
kill @e[tag=dwarves_vs_zombies__creeper,scores={creeper_beep=1}] 

execute as @a[tag=creeper,scores={creeper_refill=1,level=3}] run give @s nether_star[enchantments={vanishing_curse:1},food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0,animation:none,sound:"block.glass.break",on_consume_effects:[{type:apply_effects,effects:[{id:invisibility,duration:1,amplifier:0,show_particles:0b,show_icon:0b}]}]},custom_name=[{"text":"Rancor","italic":false,"color":"dark_red"}],lore=[[{"text":"Your hate outlives you.","italic":false,"color":"blue"}],"",[{"text":"Use item (","italic":false,"color":"gray"},{"text":"Right Click","italic":false,"color":"dark_red"},{"text":") to ","italic":false,"color":"gray"},{"text":"Lash Out","italic":false,"color":"dark_red"}]],enchantment_glint_override=false,tooltip_display={hidden_components:[enchantments]}]
execute at @a[tag=creeper,scores={creeper_refill=18,level=3}] run fill ~-2 ~-3 ~-3 ~2 ~2 ~3 minecraft:fire replace air
execute at @a[tag=creeper,scores={creeper_refill=18,level=3}] run fill ~-3 ~-3 ~-2 ~3 ~2 ~2 minecraft:fire replace air
scoreboard players remove @a[tag=creeper,scores={creeper_refill=1..}] creeper_refill 1

execute as @a[tag=creeper] at @a[tag=creeper] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:invisibility":{amplifier:{min:0}}}}} run function dwarves_vs_zombies:mobs/creeper/explode
execute as @a[tag=creeper] at @a[tag=creeper] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:invisibility":{amplifier:{min:0}}}}} run effect clear @s invisibility

execute as @a[tag=broodmother] at @a[tag=broodmother] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:{min:0}}}}} run function dwarves_vs_zombies:mobs/broodmother/summon
execute as @a[tag=broodmother,scores={level=3}] at @a[tag=broodmother,scores={level=3}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:{min:0}}}}} run function dwarves_vs_zombies:mobs/broodmother/infest
execute as @a[tag=broodmother] at @a[tag=broodmother] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:{min:0}}}}} run effect clear @s strength
execute as @a[tag=broodmother,scores={level=3}] at @a[tag=broodmother,scores={level=3}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:weakness":{amplifier:{min:0}}}}} run function dwarves_vs_zombies:mobs/broodmother/make_cobweb
execute as @a[tag=broodmother] at @a[tag=broodmother] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:weakness":{amplifier:{min:0}}}}} run effect clear @s weakness

execute as @a[tag=broodmother,scores={level=..2}] at @a[tag=broodmother,scores={level=..2}] run fill ^-1 ^1 ^-2 ^1 ^-1 ^2 air replace vine 
execute as @a[tag=broodmother] at @a[tag=broodmother] if block ~-0.5 ~0.25 ~ #dwarves_vs_zombies:broodmother_climbable run fill ^ ^ ^-0.25 ^ ^ ^-0.25 vine[west=true] replace air
execute as @a[tag=broodmother] at @a[tag=broodmother] if block ~-0.5 ~-0.25 ~ #dwarves_vs_zombies:broodmother_climbable run fill ^ ^ ^0.25 ^ ^ ^0.25 vine[west=true] replace air
execute as @a[tag=broodmother] at @a[tag=broodmother] if block ~0.5 ~0.25 ~ #dwarves_vs_zombies:broodmother_climbable run fill ^ ^ ^-0.25 ^ ^ ^-0.25 vine[east=true] replace air
execute as @a[tag=broodmother] at @a[tag=broodmother] if block ~0.5 ~-0.25 ~ #dwarves_vs_zombies:broodmother_climbable run fill ^ ^ ^0.25 ^ ^ ^0.25 vine[east=true] replace air
execute as @a[tag=broodmother] at @a[tag=broodmother] if block ~ ~0.25 ~-0.5 #dwarves_vs_zombies:broodmother_climbable run fill ^ ^ ^-0.25 ^ ^ ^-0.25 vine[north=true] replace air
execute as @a[tag=broodmother] at @a[tag=broodmother] if block ~ ~-0.25 ~-0.5 #dwarves_vs_zombies:broodmother_climbable run fill ^ ^ ^0.25 ^ ^ ^0.25 vine[north=true] replace air
execute as @a[tag=broodmother] at @a[tag=broodmother] if block ~ ~0.25 ~0.5 #dwarves_vs_zombies:broodmother_climbable run fill ^ ^ ^-0.25 ^ ^ ^-0.25 vine[south=true] replace air
execute as @a[tag=broodmother] at @a[tag=broodmother] if block ~ ~-0.25 ~0.5 #dwarves_vs_zombies:broodmother_climbable run fill ^ ^ ^0.25 ^ ^ ^0.25 vine[south=true] replace air

tag @e[tag=dwarves_vs_zombies__broodmother_web] remove passthrough
execute as @e[tag=dwarves_vs_zombies__broodmother_web] run execute at @s if entity @a[distance=..1.5,tag=broodmother] run tag @s add passthrough
execute as @e[tag=dwarves_vs_zombies__broodmother_web] run execute at @s positioned ~ ~-1 ~ if entity @a[distance=..1.5,tag=broodmother] run tag @s add passthrough
execute as @e[tag=dwarves_vs_zombies__broodmother_web] run execute at @s positioned ~ ~-1.5 ~ if entity @a[distance=..1.5,tag=broodmother] run tag @s add passthrough

execute as @e[tag=dwarves_vs_zombies__broodmother_web,tag=!passthrough] run execute at @s if block ~ ~ ~ air run playsound entity.wither.hurt block @a ~ ~ ~ 0.1 1.6
execute as @e[tag=dwarves_vs_zombies__broodmother_web,tag=!passthrough] run execute at @s if block ~ ~ ~ air run playsound entity.spider.hurt block @a ~ ~ ~ 0.1 1.5
execute as @e[tag=dwarves_vs_zombies__broodmother_web,tag=!passthrough] run execute at @s if block ~ ~ ~ air run particle white_smoke ~ ~ ~ 0.25 0.25 0.25 0 10
execute as @e[tag=dwarves_vs_zombies__broodmother_web,tag=!passthrough] run execute at @s if block ~ ~ ~ air run kill @s

execute at @e[tag=dwarves_vs_zombies__broodmother_web,tag=!passthrough] align xyz run setblock ~ ~ ~ cobweb
execute at @e[tag=dwarves_vs_zombies__broodmother_web,tag=!passthrough,nbt={block_state:{Name:"minecraft:cobweb"}}] run playsound block.froglight.hit block @a ~ ~ ~ 0.05 1.8
execute at @e[tag=dwarves_vs_zombies__broodmother_web,tag=!passthrough,nbt={block_state:{Name:"minecraft:cobweb"}}] run particle white_smoke ~ ~ ~ 0.25 0.25 0.25 0 1
execute as @e[tag=dwarves_vs_zombies__broodmother_web,tag=!passthrough] align xyz run data merge entity @s {block_state:{Name:"minecraft:air"}}

execute at @e[tag=dwarves_vs_zombies__broodmother_web,tag=passthrough] align xyz run setblock ~ ~ ~ light[level=0]
execute at @e[tag=dwarves_vs_zombies__broodmother_web,tag=passthrough,nbt={block_state:{Name:"minecraft:air"}}] run playsound entity.spider.step block @a ~ ~ ~ 0.1 1.7
execute at @e[tag=dwarves_vs_zombies__broodmother_web,tag=passthrough,nbt={block_state:{Name:"minecraft:air"}}] run playsound entity.wither.shoot block @a ~ ~ ~ 0.002 1.7
execute at @e[tag=dwarves_vs_zombies__broodmother_web,tag=passthrough,nbt={block_state:{Name:"minecraft:air"}}] run playsound block.frogspawn.hit block @a ~ ~ ~ 0.1 1.9
execute at @e[tag=dwarves_vs_zombies__broodmother_web,tag=passthrough,nbt={block_state:{Name:"minecraft:air"}}] run particle white_smoke ~ ~ ~ 0.25 0.25 0.25 0 1
execute as @e[tag=dwarves_vs_zombies__broodmother_web,tag=passthrough] align xyz run data merge entity @s {block_state:{Name:"minecraft:cobweb"}}

execute at @e[tag=dwarves_vs_zombies__class_select_mother,tag=lit] run title @a[tag=!broodmother,distance=..5] actionbar {"text":"Right click to select","color":"gray"}
execute at @e[tag=dwarves_vs_zombies__class_select_martyr,tag=lit] run title @a[tag=!creeper,distance=..5] actionbar {"text":"Right click to select","color":"gray"}
execute at @e[tag=dwarves_vs_zombies__class_select_knight,tag=lit] run title @a[tag=!zombie,distance=..5] actionbar {"text":"Right click to select","color":"gray"}
execute at @e[tag=dwarves_vs_zombies__class_select,tag=lit] run particle small_flame ~ ~0.1 ~ 0.4 0.2 0.4 0 2
execute at @e[tag=dwarves_vs_zombies__class_select,tag=lit] run playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 0.5
execute at @e[tag=dwarves_vs_zombies__class_select,tag=lit] run particle flame ~ ~ ~ 0.4 0.2 0.4 0 2
execute at @e[tag=dwarves_vs_zombies__class_select,tag=lit] run particle smoke ~ ~0.1 ~ 0.4 0.2 0.4 0 2
execute at @e[tag=dwarves_vs_zombies__class_select,tag=lit] run setblock ~ ~1 ~ light[level=15]
execute at @e[tag=dwarves_vs_zombies__class_select,tag=!lit] run setblock ~ ~1 ~ barrier
execute at @e[tag=dwarves_vs_zombies__select_level_2,tag=lit] run setblock ~ ~1 ~ light[level=15]
execute at @e[tag=dwarves_vs_zombies__select_level_2,tag=!lit] run setblock ~ ~1 ~ air

execute as @e[tag=dwarves_vs_zombies__class_select,tag=!lit] run execute at @s if entity @a[distance=..5] run playsound item.firecharge.use master @a ~ ~ ~ 0.4 1.5
execute as @e[tag=dwarves_vs_zombies__class_select,tag=!lit] run execute at @s if entity @a[distance=..5] run playsound block.fire.ambient master @a ~ ~ ~ 0.2 1.4
execute as @e[tag=dwarves_vs_zombies__class_select,tag=!lit] run execute at @s if entity @a[distance=..5] run playsound block.trial_spawner.detect_player master @a ~ ~ ~ 0.5 0.8
execute as @e[tag=dwarves_vs_zombies__class_select,tag=!lit] run execute at @s if entity @a[distance=..5] run playsound block.trial_spawner.spawn_mob master @a ~ ~ ~ 0.7 0.6
execute as @e[tag=dwarves_vs_zombies__class_select,tag=!lit] run execute at @s if entity @a[distance=..5] run particle large_smoke ~ ~0.5 ~ 0.4 0.2 0.4 0 20
execute as @e[tag=dwarves_vs_zombies__class_select,tag=!lit] run execute at @s if entity @a[distance=..5] run particle smoke ~ ~0.75 ~ 0.4 0.5 0.4 0 20
execute as @e[tag=dwarves_vs_zombies__class_select,tag=!lit] run execute at @s if entity @a[distance=..5] run particle flame ~ ~0.75 ~ 0.4 0.5 0.4 0 20
execute as @e[tag=dwarves_vs_zombies__class_select_mother,tag=!lit] run execute at @s if entity @a[distance=..5] run summon text_display ~ ~3.5 ~ {default_background:false,text:{text:"The Mother",color:"gold"},billboard:"center",brightness:{block:15,sky:0}}
execute as @e[tag=dwarves_vs_zombies__class_select_martyr,tag=!lit] run execute at @s if entity @a[distance=..5] run summon text_display ~-0.6 ~2.7 ~-0.6 {default_background:false,text:{text:"The Martyr",color:"gold"},billboard:"center",brightness:{block:15,sky:0}}
execute as @e[tag=dwarves_vs_zombies__class_select_knight,tag=!lit] run execute at @s if entity @a[distance=..5] run summon text_display ~ ~3.25 ~1 {default_background:false,text:{text:"The Servant",color:"gold"},billboard:"center",brightness:{block:15,sky:0}}

execute as @e[tag=dwarves_vs_zombies__select_level_2,tag=!lit] run execute at @s if entity @a[distance=..2.55] run summon text_display ~ ~1.5 ~ {text:{text:"Select class level",color:"gray"},billboard:"fixed",brightness:{block:15,sky:0},default_background:false,transformation:[-1.0000f,0.0000f,-0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute as @e[tag=dwarves_vs_zombies__select_level_2,tag=!lit] run execute at @s if entity @a[distance=..2.55] run summon text_display ~-1 ~0.5 ~ {default_background:false,text:{text:"III",color:"gold"},billboard:"center",brightness:{block:15,sky:0}}
execute as @e[tag=dwarves_vs_zombies__select_level_2,tag=!lit] run execute at @s if entity @a[distance=..2.55] run summon text_display ~ ~0.5 ~ {default_background:false,text:{text:"II",color:"gold"},billboard:"center",brightness:{block:15,sky:0}}
execute as @e[tag=dwarves_vs_zombies__select_level_2,tag=!lit] run execute at @s if entity @a[distance=..2.55] run summon text_display ~1 ~0.5 ~ {default_background:false,text:{text:"I",color:"gold"},billboard:"center",brightness:{block:15,sky:0}}
execute as @e[tag=dwarves_vs_zombies__select_level_2,tag=!lit] run execute at @s if entity @a[distance=..2.5] run playsound block.trial_spawner.open_shutter master @a ~ ~ ~ 0.2 1.4

execute as @e[tag=dwarves_vs_zombies__class_select,tag=lit] run execute at @s unless entity @a[distance=..5] run playsound block.trial_spawner.close_shutter master @a ~ ~ ~ 0.2 1.4
execute as @e[tag=dwarves_vs_zombies__class_select,tag=lit] run execute at @s unless entity @a[distance=..5] run kill @e[type=text_display,distance=..5]

execute as @e[tag=dwarves_vs_zombies__select_level_2,tag=lit] run execute at @s unless entity @a[distance=..2.5] run playsound block.trial_spawner.close_shutter master @a ~ ~ ~ 0.2 1.4
execute as @e[tag=dwarves_vs_zombies__select_level_2,tag=lit] run execute at @s unless entity @a[distance=..2.5] run kill @e[type=text_display,distance=..3]

execute as @e[tag=dwarves_vs_zombies__select_level_2] run execute at @s if entity @a[distance=..2.5] run tag @s add lit
execute as @e[tag=dwarves_vs_zombies__select_level_2] run execute at @s unless entity @a[distance=..2.5] run tag @s remove lit
execute as @e[tag=dwarves_vs_zombies__class_select] run execute at @s if entity @a[distance=..5] run tag @s add lit
execute as @e[tag=dwarves_vs_zombies__class_select] run execute at @s unless entity @a[distance=..5] run tag @s remove lit

execute at @e[tag=dwarves_vs_zombies__exit] run tag @a[distance=..1.5] add spawning

execute at @e[tag=dwarves_vs_zombies__class_select_knight] run execute as @a[team=zombies,distance=..30] run execute at @s run playsound entity.warden.nearby_close ambient @s ~ ~ ~ 0.1 0.2
execute at @e[tag=dwarves_vs_zombies__class_select_knight] run stopsound @a[team=zombies,distance=..30] ambient ambient.soul_sand_valley.loop
execute at @e[tag=dwarves_vs_zombies__class_select_knight] run stopsound @a[team=zombies,distance=..30] weather entity.lightning_bolt.thunder

schedule function dwarves_vs_zombies:tick 1t replace