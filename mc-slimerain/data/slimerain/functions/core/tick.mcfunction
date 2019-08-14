execute store result score game sl.time run time query daytime
execute store result score game sl.event_rng run loot spawn ~ ~ ~ loot slimerain:rng/event_rng

execute unless score game sl.slime_rain_on = 1 sl.constants run execute if score game sl.time = 0 sl.constants run execute if score game sl.event_rng = 0 sl.constants run function slimerain:event/event_start

execute if score game sl.slime_rain_on = 1 sl.constants run function slimerain:event/event_tick
