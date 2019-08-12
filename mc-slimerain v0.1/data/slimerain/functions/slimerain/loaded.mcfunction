tellraw @a ["",{"text":"TheDarkNova Slime Rain v0.1 Loaded","color":"green","bold":true}]

function slimerain:meta/reset_scoreboards

scoreboard objectives add slime_rain_on dummy
scoreboard objectives add slime_killcount dummy
scoreboard players set game slime_rain_on 0
scoreboard players set game slime_killcount 0

scoreboard objectives add spawn_rng dummy
scoreboard objectives add pos_bool_x dummy
scoreboard objectives add pos_bool_z dummy
scoreboard objectives add slime_x dummy
scoreboard objectives add slime_z dummy
scoreboard objectives add slime_dx dummy
scoreboard objectives add slime_dz dummy
scoreboard objectives add slime_size dummy
scoreboard objectives add boss_x dummy
scoreboard objectives add boss_z dummy
scoreboard objectives add boss_spawned dummy
scoreboard players set game boss_spawned 0

scoreboard objectives add time dummy
execute store result score game time run time query daytime

scoreboard objectives add slime_rain_rng dummy

scoreboard objectives add constants dummy
scoreboard players set 1 constants 1
scoreboard players set 0 constants 0
scoreboard players set 100 constants 100
