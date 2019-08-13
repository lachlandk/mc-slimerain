execute store result score game slimerain.time run time query daytime
execute store result score game slimerain.slime_rain_rng run loot spawn ~ ~ ~ loot slimerain:rng/event_rng

execute unless score game slimerain.slime_rain_on = 1 slimerain.constants run execute if score game slimerain.time = 0 slimerain.constants run execute if score game slimerain.slime_rain_rng = 0 slimerain.constants run function slimerain:event/event_start

execute if score game slimerain.slime_rain_on = 1 slimerain.constants run function slimerain:event/event_tick
