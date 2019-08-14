tellraw @a ["",{"text":"TheDarkNova Slime Rain v0.2 Loaded","color":"green","bold":true}]

function slimerain:core/uninstall

scoreboard objectives add slimerain.slime_rain_on dummy
scoreboard objectives add slimerain.slime_killcount dummy
scoreboard players set game slimerain.slime_rain_on 0
scoreboard players set game slimerain.slime_killcount 0

scoreboard objectives add slimerain.spawn_rng dummy
scoreboard objectives add slimerain.sky_access dummy
scoreboard objectives add slimerain.player_y_pos dummy

scoreboard objectives add slimerain.boss_x dummy
scoreboard objectives add slimerain.boss_z dummy
scoreboard objectives add slimerain.boss_spawned dummy
scoreboard players set game slimerain.boss_spawned 0
scoreboard objectives add slimerain.damaged_boss dummy

scoreboard objectives add slimerain.time dummy
execute store result score game slimerain.time run time query daytime

scoreboard objectives add slimerain.slime_rain_rng dummy

scoreboard objectives add slimerain.constants dummy
scoreboard players set 1 slimerain.constants 1
scoreboard players set 0 slimerain.constants 0
scoreboard players set 100 slimerain.constants 100
