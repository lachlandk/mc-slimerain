summon minecraft:slime ~ ~ ~ {Tags:["slimerain.slime_jockey"],Size:1,Passengers:[{id:"minecraft:skeleton",Tags:["slimerain.slime_jockey"]}]}
data modify entity @e[type=minecraft:skeleton,tag=slimerain.slime_jockey,limit=1,sort=nearest] HandItems set from entity @s HandItems
data modify entity @e[type=minecraft:skeleton,tag=slimerain.slime_jockey,limit=1,sort=nearest] ArmorItems set from entity @s ArmorItems

data merge entity @s {HandItems:[{},{}],ArmorItems:[{},{},{},{}],DeathLootTable:"minecraft:empty",Silent:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200,ShowParticles:0b}]}
kill @s
