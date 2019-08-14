spreadplayers ~ ~ 0 20 false @s
execute at @s store result score @s sl.sky_access if blocks ~ ~1 ~ ~ 255 ~ ~ ~1 ~ masked
execute if score @s sl.sky_access = 0 sl.constants run execute store result entity @s Pos[1] double 1 run scoreboard players get @s sl.player_y_pos
execute if score @s sl.sky_access = 0 sl.constants at @s run summon minecraft:slime ~ ~50 ~ {ActiveEffects:[{Id:28b,Amplifier:1b,Duration:600,ShowParticles:0b}]}
execute at @s positioned ~ ~50 ~ store result entity @e[type=minecraft:slime,limit=1,sort=nearest] Size int 1 run scoreboard players get @s sl.slime_size

kill @s
