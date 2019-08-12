execute if score game slime_rain_on = 1 constants run tellraw @a {"text":"Slime has stopped falling from the sky.","color":"green","bold":true}

execute if score game slime_rain_on = 1 constants run scoreboard players set game slime_killcount 0

execute if score game slime_rain_on = 1 constants run weather clear
execute if score game slime_rain_on = 1 constants run scoreboard players set game slime_rain_on 0
