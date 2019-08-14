execute if score game sl.slime_kills = 100 sl.constants run execute unless score game sl.boss_spawned = 1 sl.constants run function slimerain:event/boss/boss_spawn

execute as @e[type=minecraft:skeleton,tag=!slimerain.slime_jockey] run execute at @s run function slimerain:event/slime_jockey
execute as @e[type=minecraft:slime,nbt={Size:0}] run data merge entity @s {DeathLootTable:"slimerain:mobs/slime"}
effect clear @e[type=minecraft:slime,nbt={wasOnGround:1b}] minecraft:slow_falling

execute in minecraft:overworld as @a[distance=0..] run execute store result score @s sl.spawn_rng run loot spawn ~ ~ ~ loot slimerain:rng/spawn_rng

execute in minecraft:overworld at @a[distance=0..,scores={sl.spawn_rng=0}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["slimerain.spawn_marker"]}
execute in minecraft:overworld as @a[distance=0..,scores={sl.spawn_rng=0}] at @s run execute store result score @e[type=minecraft:area_effect_cloud,tag=slimerain.spawn_marker,limit=1,sort=nearest] sl.player_y_pos run data get entity @s Pos[1]
execute in minecraft:overworld at @a[distance=0..,scores={sl.spawn_rng=0}] run execute store result score @e[type=minecraft:area_effect_cloud,tag=slimerain.spawn_marker,limit=1,sort=nearest] sl.slime_size run loot spawn ~ ~ ~ loot slimerain:rng/slime_size_rng
execute in minecraft:overworld at @a[distance=0..,scores={sl.spawn_rng=0}] run execute as @e[type=minecraft:area_effect_cloud,tag=slimerain.spawn_marker,limit=1,sort=nearest] run function slimerain:event/slime_spawn
