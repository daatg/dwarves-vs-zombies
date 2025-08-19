stopsound @s * entity.player.burp
fill ~-2 ~-1 ~-2 ~2 ~2 ~2 infested_stone_bricks replace stone_bricks
fill ~-2 ~-1 ~-2 ~2 ~2 ~2 infested_cracked_stone_bricks replace cracked_stone_bricks
fill ~-2 ~-1 ~-2 ~2 ~2 ~2 infested_mossy_stone_bricks replace mossy_stone_bricks
fill ~-2 ~-1 ~-2 ~2 ~2 ~2 infested_chiseled_stone_bricks replace chiseled_stone_bricks
effect give @a[team=dwarves,distance=..5] infested 10 0 false
playsound block.stone.break master @a ~ ~ ~ 1.0 0.8
playsound item.mace.smash_air master @a ~ ~ ~ 1.0 1.1
playsound entity.silverfish.ambient master @a ~ ~ ~ 1.0 1.0
particle infested ~ ~0.5 ~ 2 1.5 2 0.05 80