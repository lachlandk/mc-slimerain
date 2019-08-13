tellraw @p ["",{"selector":"@s","color":"green","bold":true},{"text":"has defeated King Slime!","color":"green","bold":true}]
advancement revoke @s only slimerain:core/boss_kill
scoreboard players set game slimerain.boss_spawned 0
function slimerain:event/event_end
execute as @a[scores={slimerain.attacked_boss=1}] run advancement grant @s only slimerain:survival/thats_a_big_slime
