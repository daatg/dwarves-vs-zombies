for x in range(-1, 2):
  for z in range(-1, 2):
    for y in range(-1, 2):
        print(f"""
execute align xyz if block ~{x} ~{y} ~{z} air run summon block_display ~{x+0.5:.1f} ~{y+0.5:.1f} ~{z+0.5:.1f} {{transformation:{{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[-0.5f,-0.5f,-0.5f]}},block_state:{{Name:cobweb}},Tags:[dwarves_vs_zombies__broodmother_web]}}
execute align xyz if block ~{x} ~{y} ~{z} air run setblock ~{x} ~{y} ~{z} light[level=0]""", end='')