execute unless score count damage_dealt matches 400.. run title @s actionbar [{text:"Insufficient ",color:"gray"},{text:"Blood",color:"dark_red",bold:1b},{text:". Required: ",color:"gray"},{text:"400",color:"dark_red"},{text:".",color:"gray"}]
execute unless score count damage_dealt matches 400.. run execute at @e[tag=dwarves_vs_zombies__select_level_3] run particle smoke ~ ~0.5 ~ 0.15 0.15 0.15 0 2
execute unless score count damage_dealt matches 400.. run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1.0 0.75
execute unless score count damage_dealt matches 400.. run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1.0 0.7
execute if score count damage_dealt matches 400.. run playsound item.mace.smash_ground_heavy master @s ~ ~ ~ 1.0 1.4
execute if score count damage_dealt matches 400.. run title @s actionbar {"text":"Level III","color":"gray"}
execute if score count damage_dealt matches 400.. run scoreboard players set @s level 3
execute if score count damage_dealt matches 400.. run execute at @e[tag=dwarves_vs_zombies__select_level_3] run particle flame ~ ~0.5 ~ 0.15 0.15 0.15 0 3
advancement revoke @s only dwarves_vs_zombies:select_level_3