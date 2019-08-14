execute if score game slimerain.slime_killcount = 100 slimerain.constants run execute unless score game slimerain.boss_spawned = 1 slimerain.constants run function slimerain:event/boss/boss_spawn

execute as @e[type=minecraft:skeleton,tag=!slimerain.slime_jockey] run execute at @s run function slimerain:event/slime_jockey
execute as @e[type=minecraft:slime,nbt={Size:0}] run data merge entity @s {DeathLootTable:"slimerain:mobs/slime"}
effect clear @e[type=minecraft:slime,nbt={wasOnGround:1b}] minecraft:slow_falling

execute in minecraft:overworld as @a[distance=0..] run execute store result score @s slimerain.spawn_rng run loot spawn ~ ~ ~ loot slimerain:rng/spawn_rng
execute in minecraft:overworld as @a[distance=0..,scores={slimerain.spawn_rng=0}] run execute at @s run function slimerain:event/slime_spawn

execute in minecraft:overworld as @a[distance=0..,scores={slimerain.spawn_rng=0}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["slimerain.spawn_marker"]}
execute in minecraft:overworld as @a[distance=0..,scores={slimerain.spawn_rng=0}] run execute store result score @e[type=minecraft:area_effect_cloud,tag=slimerain.spawn_marker,limit=1,sort=nearest] slimerain.player_y_pos run data get entity @s Pos[1]
execute in minecraft:overworld at @a[distance=0..,scores={slimerain.spawn_rng=0}] as @e[type=minecraft:area_effect_cloud,tag=slimerain.spawn_marker,limit=1,sort=nearest] run function slimerain:event/slime_spawn
