tellraw @a ["",{"text":"TheDarkNova Slime Rain v0.2 Loaded","color":"green","bold":true}]

function slimerain:core/uninstall

scoreboard objectives add sl.slime_rain_on dummy
scoreboard objectives add sl.slime_kills dummy
scoreboard players set game sl.slime_rain_on 0
scoreboard players set game sl.slime_kills 0

scoreboard objectives add sl.spawn_rng dummy
scoreboard objectives add sl.sky_access dummy
scoreboard objectives add sl.player_y_pos dummy
scoreboard objectives add sl.slime_size dummy
scoreboard objectives add sl.player_death deathCount

scoreboard objectives add sl.boss_x dummy
scoreboard objectives add sl.boss_z dummy
scoreboard objectives add sl.boss_spawned dummy
scoreboard players set game sl.boss_spawned 0
scoreboard objectives add sl.damaged_boss dummy

scoreboard objectives add sl.time dummy
execute store result score game sl.time run time query daytime

scoreboard objectives add sl.event_rng dummy

scoreboard objectives add sl.constants dummy
scoreboard players set 1 sl.constants 1
scoreboard players set 0 sl.constants 0
scoreboard players set 100 sl.constants 100
