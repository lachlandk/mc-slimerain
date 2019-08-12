execute if score game slime_rain_on = 0 constants run tellraw @a {"text":"Slime is falling from the sky!","color":"green","bold":true}

execute if score game slime_rain_on = 0 constants run weather rain 600
execute if score game slime_rain_on = 0 constants run schedule function slimerain:slimerain/event_end 600s

execute if score game slime_rain_on = 0 constants run scoreboard players set game slime_rain_on 1
