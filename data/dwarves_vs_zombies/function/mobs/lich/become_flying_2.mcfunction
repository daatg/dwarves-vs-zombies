execute at @a[tag=lich,limit=1] run spreadplayers ~ ~ 0 5 false @a[tag=lich]
execute at @a[tag=lich,limit=1] run tp @a[tag=lich] ~ 128 ~
gamemode spectator @a[tag=lich]
gamemode creative @a[tag=lich]
effect give @a[tag=lich] invisibility infinite 0 true
item replace entity @a[tag=lich] armor.head with minecraft:air
attribute @a[tag=lich,limit=1] scale base set 1
attribute @a[tag=lich,limit=1] block_interaction_range base set -1.0
attribute @a[tag=lich,limit=1] entity_interaction_range base set -2.5
clear @a[tag=lich]
give @a[tag=lich] rotten_flesh[enchantments={vanishing_curse:1},food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0,animation:none,sound:"block.glass.break",on_consume_effects:[{type:apply_effects,effects:[{id:oozing,duration:1,amplifier:0,show_particles:0b,show_icon:0b}]}]},custom_name=[{"text":"Manifest","italic":false,"color":"dark_red"}],lore=[[{"text":"Blood seeps through the cracks of this world.","italic":false,"color":"blue"}],"",[{"text":"Use item (","italic":false,"color":"gray"},{"text":"Right Click","italic":false,"color":"dark_red"},{"text":") to ","italic":false,"color":"gray"},{"text":"Enter a body","italic":false,"color":"dark_red"}]],enchantment_glint_override=false,tooltip_display={hidden_components:[enchantments]}]