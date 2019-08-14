spreadplayers ~ ~ 0 20 false @s
execute at @s store result score @s slimerain.sky_access if blocks ~ ~1 ~ ~ 255 ~ ~ ~1 ~ masked
execute if score @s slimerain.sky_access = 0 slimerain.constants run execute store result entity @s Pos[1] double 1 run scoreboard players get @s slimerain.sky_access
execute if score @s slimerain.sky_access = 0 slimerain.constants at @s run summon minecraft:slime ~ ~50 ~ {ActiveEffects:[{Id:28b,Amplifier:1b,Duration:600,ShowParticles:0b}]}
execute store result entity @e[type=minecraft:slime,limit=1,sort=nearest] Size int 1 run scoreboard players get @s slimerain.slime_size

scoreboard players reset @s slimerain.sky_access
scoreboard players reset @s slimerain.player_y_pos
scoreboard players reset @s slimerain.slime_size
kill @s
