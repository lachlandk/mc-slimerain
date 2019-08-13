execute if score game slimerain.slime_rain_on = 0 slimerain.constants run tellraw @a {"text":"Slime is falling from the sky!","color":"green","bold":true}

execute if score game slimerain.slime_rain_on = 0 slimerain.constants run weather rain 600
execute if score game slimerain.slime_rain_on = 0 slimerain.constants run schedule function slimerain:event/event_end 600s

execute if score game slimerain.slime_rain_on = 0 slimerain.constants run scoreboard players set game slimerain.slime_rain_on 1
