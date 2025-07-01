for x in range(-2, 3):
  for z in range(-2, 3):
    for y in range(2, 6):
        print(f""",
		{{
			"type": "minecraft:block_predicate_filter",
			"predicate": {{
				"type": "minecraft:not",
				"predicate": {{
					"type": "minecraft:matching_blocks",
					"offset": [
						{x},
						{y},
						{z}
					],
					"blocks": "minecraft:mossy_cobblestone"
				}}
			}}
		}}""", end='')