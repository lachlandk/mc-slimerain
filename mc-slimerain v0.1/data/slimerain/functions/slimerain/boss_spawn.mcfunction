summon minecraft:slime ~ 100 ~ {Health:100f,Size:10,Tags:["KingSlime"],ActiveEffects:[{Id:28b,Amplifier:1b,Duration:600,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:100}]}
execute store result score game boss_x run data get entity @e[type=minecraft:slime,tag=KingSlime,limit=1] Pos[0]
execute store result score game boss_z run data get entity @e[type=minecraft:slime,tag=KingSlime,limit=1] Pos[2]
scoreboard players set game boss_spawned 1
playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ 1 1 1
tellraw @a ["",{"text":"King Slime has spawned at (","color":"green","bold":true},{"score":{"name":"game","objective":"boss_z"},"color":"green","bold":true},{"text":", ","color":"green","bold":true},{"score":{"name":"game","objective":"boss_x"},"color":"green","bold":true},{"text":")!","color":"green","bold":true}]
