tellraw @p ["",{"selector":"@s","color":"green","bold":true},{"text":"has defeated King Slime!","color":"green","bold":true}]
advancement revoke @s only slimerain:meta/boss_kill
scoreboard players set game boss_spawned 0
function slimerain:slimerain/event_end
