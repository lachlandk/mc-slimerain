execute if score game slimerain.slime_rain_on = 1 slimerain.constants run tellraw @a {"text":"Slime has stopped falling from the sky.","color":"green","bold":true}

execute if score game slimerain.slime_rain_on = 1 slimerain.constants run scoreboard players set game slimerain.slime_killcount 0
execute if score game slimerain.slime_rain_on = 1 slimerain.constants run scoreboard players set game slimerain.boss_spawned 0

execute if score game slimerain.slime_rain_on = 1 slimerain.constants run advancement grant @a[scores={slimerain.player_death=0}] only slimerain:survival/sticky_situation
execute if score game slimerain.slime_rain_on = 1 slimerain.constants run scoreboard players reset @a slimerain.player_death

execute if score game slimerain.slime_rain_on = 1 slimerain.constants run weather clear
execute if score game slimerain.slime_rain_on = 1 slimerain.constants run scoreboard players set game slimerain.slime_rain_on 0
