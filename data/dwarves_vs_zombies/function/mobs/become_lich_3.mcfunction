kill @e[tag=dwarves_vs_zombies__become_lich] 
kill @e[tag=dwarves_vs_zombies__lich_body]
kill @e[tag=dwarves_vs_zombies__lich_body_torso]
execute at @a[tag=lich] run tp @a[tag=lich] ~ 256 ~
execute as @a[tag=lich] run schedule function dwarves_vs_zombies:mobs/become_lich_4 3s replace