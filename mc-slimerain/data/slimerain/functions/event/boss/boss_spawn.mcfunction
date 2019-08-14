summon minecraft:slime ~ 100 ~ {PersistenceRequired:1b,Health:100f,Size:10,Tags:["slimerain.king_slime"],ActiveEffects:[{Id:28b,Amplifier:1b,Duration:600,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:100}]}
execute store result score game sl.boss_x run data get entity @e[type=minecraft:slime,tag=slimerain.king_slime,limit=1] Pos[0]
execute store result score game sl.boss_z run data get entity @e[type=minecraft:slime,tag=slimerain.king_slime,limit=1] Pos[2]
scoreboard players set game sl.boss_spawned 1
playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ 1 1 1
tellraw @a[nbt={Dimension:0}] ["",{"text":"King Slime has spawned at (","color":"green","bold":true},{"score":{"name":"game","objective":"sl.boss_z"},"color":"green","bold":true},{"text":", ","color":"green","bold":true},{"score":{"name":"game","objective":"sl.boss_x"},"color":"green","bold":true},{"text":")!","color":"green","bold":true}]
scoreboard players set @a sl.damaged_boss 0
