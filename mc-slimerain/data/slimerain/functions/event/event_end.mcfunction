execute if score game slimerain.slime_rain_on = 1 slimerain.constants run tellraw @a {"text":"Slime has stopped falling from the sky.","color":"green","bold":true}

execute if score game slimerain.slime_rain_on = 1 slimerain.constants run scoreboard players set game slimerain.slime_killcount 0
execute if score game slimerain.slime_rain_on = 1 slimerain.constants run scoreboard players set game slimerain.boss_spawned 0

execute if score game slimerain.slime_rain_on = 1 slimerain.constants run weather clear
execute if score game slimerain.slime_rain_on = 1 slimerain.constants run scoreboard players set game slimerain.slime_rain_on 0
