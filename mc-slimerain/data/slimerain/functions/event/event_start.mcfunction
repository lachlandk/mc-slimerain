execute if score game sl.slime_rain_on = 0 sl.constants run tellraw @a[nbt={Dimension:0}] {"text":"Slime is falling from the sky!","color":"green","bold":true}

scoreboard players reset @a sl.player_death
scoreboard players set @a sl.player_death 0

execute if score game sl.slime_rain_on = 0 sl.constants run advancement grant @a only slimerain:survival/root
execute if score game sl.slime_rain_on = 0 sl.constants run weather rain 600
execute if score game sl.slime_rain_on = 0 sl.constants run schedule function slimerain:event/event_end 600s

execute if score game sl.slime_rain_on = 0 sl.constants run scoreboard players set game sl.slime_rain_on 1
