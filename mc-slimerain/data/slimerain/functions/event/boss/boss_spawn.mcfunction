summon minecraft:slime ~ 100 ~ {Health:100f,Size:10,Tags:["slimerain.king_slime"],ActiveEffects:[{Id:28b,Amplifier:1b,Duration:600,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:100}]}
execute store result score game slimerain.boss_x run data get entity @e[type=minecraft:slime,tag=slimerain.king_slime,limit=1] Pos[0]
execute store result score game slimerain.boss_z run data get entity @e[type=minecraft:slime,tag=slimerain.king_slime,limit=1] Pos[2]
scoreboard players set game slimerain.boss_spawned 1
playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ 1 1 1
tellraw @a ["",{"text":"King Slime has spawned at (","color":"green","bold":true},{"score":{"name":"game","objective":"slimerain.boss_z"},"color":"green","bold":true},{"text":", ","color":"green","bold":true},{"score":{"name":"game","objective":"slimerain.boss_x"},"color":"green","bold":true},{"text":")!","color":"green","bold":true}]
scoreboard players set @a slimerain.damaged_boss 0
