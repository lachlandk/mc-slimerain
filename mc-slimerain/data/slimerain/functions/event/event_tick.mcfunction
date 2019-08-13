execute if score game slimerain.slime_killcount = 100 slimerain.constants run execute unless score game slimerain.boss_spawned = 1 slimerain.constants run function slimerain:event/boss/boss_spawn

execute as @e[type=minecraft:skeleton,tag=!slimerain.slime_jockey] run execute at @s run function slimerain:event/slime_jockey
execute as @e[type=minecraft:slime,nbt={Size:0}] run data merge entity @s {DeathLootTable:"slimerain:mobs/slime"}
effect clear @e[type=minecraft:slime,nbt={wasOnGround:1b}] minecraft:slow_falling

execute as @a run execute store result score @s slimerain.spawn_rng run loot spawn ~ ~ ~ loot slimerain:rng/spawn_rng
execute as @a[scores={slimerain.spawn_rng=0}] run execute at @s run function slimerain:event/slime_spawn
