summon minecraft:slime ~ 100 ~ {Size:2,Tags:["fresh"],ActiveEffects:[{Id:28b,Amplifier:1b,Duration:600,ShowParticles:0b}]}
#execute as @e[type=minecraft:slime,tag=fresh,limit=1,sort=nearest] run function slimerain:slimerain/slime_randomize_pos
tag @e[type=minecraft:slime,tag=fresh,limit=1,sort=nearest] remove fresh
