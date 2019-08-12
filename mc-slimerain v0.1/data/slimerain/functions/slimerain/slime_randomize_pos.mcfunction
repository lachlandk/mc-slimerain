execute store result score @s slime_x run data get entity @s Pos[0]
execute store result score @s slime_z run data get entity @s Pos[2]
execute store result score @s slime_dx run loot spawn ~ ~ ~ loot slimerain:meta/pos_rng
execute store result score @s slime_dz run loot spawn ~ ~ ~ loot slimerain:meta/pos_rng
execute store result score @s pos_bool_x run loot spawn ~ ~ ~ loot slimerain:meta/binary_rng
execute store result score @s pos_bool_z run loot spawn ~ ~ ~ loot slimerain:meta/binary_rng

execute if score @s pos_bool_x = 1 constants run scoreboard players operation @s slime_x += @s slime_dx
execute if score @s pos_bool_x = 0 constants run scoreboard players operation @s slime_x -= @s slime_dx
execute if score @s pos_bool_z = 1 constants run scoreboard players operation @s slime_z += @s slime_dz
execute if score @s pos_bool_z = 0 constants run scoreboard players operation @s slime_z -= @s slime_dz

execute store result entity @s Pos[0] double 1 run scoreboard players get @s slime_dx
execute store result entity @s Pos[2] double 1 run scoreboard players get @s slime_dz

tag @s remove fresh
