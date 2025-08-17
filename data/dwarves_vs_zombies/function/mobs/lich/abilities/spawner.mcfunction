advancement revoke @s only dwarves_vs_zombies:abilities/lich/spawner
stopsound @a * entity.player.burp
execute align xyz run summon falling_block ~0.5 ~0.5 ~0.5 {DropItem:0b,Tags:[dwarves_vs_zombies__spawner],BlockState:{Name:spawner,Properties:{mode:"save"}},TileEntityData:{SpawnCount:1,MinSpawnDelay:200,MaxSpawnDelay:400,SpawnRange:2,RequiredPlayerRange:16,SpawnData:{entity:{id:wither_skeleton,Team:zombies,Health:1,equipment:{mainhand:{id:air}},attributes:[{id:movement_speed,base:0.4f},{id:attack_knockback,base:1.5f},{id:max_health,base:1f}]}}}}
clear @s chain