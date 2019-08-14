execute if score game sl.slime_rain_on = 1 sl.constants run tellraw @a[nbt={Dimension:0}] {"text":"Slime has stopped falling from the sky.","color":"green","bold":true}

execute if score game sl.slime_rain_on = 1 sl.constants run scoreboard players set game sl.slime_kills 0
execute if score game sl.slime_rain_on = 1 sl.constants run scoreboard players set game sl.boss_spawned 0

execute if score game sl.slime_rain_on = 1 sl.constants run advancement grant @a[scores={sl.player_death=0}] only slimerain:survival/sticky_situation
execute if score game sl.slime_rain_on = 1 sl.constants run scoreboard players reset @a sl.player_death

execute if score game sl.slime_rain_on = 1 sl.constants run weather clear
execute if score game sl.slime_rain_on = 1 sl.constants run scoreboard players set game sl.slime_rain_on 0
