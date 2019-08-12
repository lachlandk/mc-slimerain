execute store result score game time run time query daytime
execute store result score game slime_rain_rng run loot spawn ~ ~ ~ loot slimerain:meta/event_rng

execute unless score game slime_rain_on = 1 constants run execute if score game time = 0 constants run execute if score game slime_rain_rng = 0 constants run function slimerain:slimerain/event_start
execute if score game slime_rain_on = 1 constants run execute unless score game boss_spawned = 1 constants run execute if score game slime_killcount = 100 constants run function slimerain:slimerain/boss_spawn

execute if score game slime_rain_on = 1 constants run execute as @e[type=minecraft:skeleton,tag=!jockey] run execute at @s run function slimerain:slimerain/slime_jockey
execute if score game slime_rain_on = 1 constants run execute as @e[type=minecraft:slime,nbt={Size:0}] run data merge entity @s {DeathLootTable:"slimerain:mobs/slime"}
execute if score game slime_rain_on = 1 constants run effect clear @e[type=minecraft:slime,nbt={wasOnGround:1b}] minecraft:slow_falling

execute if score game slime_rain_on = 1 constants run execute as @a run execute store result score @s spawn_rng run loot spawn ~ ~ ~ loot slimerain:meta/spawn_rng
execute if score game slime_rain_on = 1 constants run execute as @a[scores={spawn_rng=0}] run execute at @s run function slimerain:slimerain/slime_spawn
