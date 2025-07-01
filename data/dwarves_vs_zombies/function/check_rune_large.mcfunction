execute if score count playercount matches ..4 if score count runecountlg matches 0 run return 0
execute if score count playercount matches 5..8 if score count runecountlg matches 0..1 run return 0
execute if score count playercount matches 9..12 if score count runecountlg matches 0..2 run return 0
execute if score count playercount matches 13.. if score count runecountlg matches 0..3 run return 0
return run function dwarves_vs_zombies:check_rune_small