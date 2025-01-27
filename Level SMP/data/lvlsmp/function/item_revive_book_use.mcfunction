execute at @e[type=silverfish, tag=lvlsmp.callRevive] as @a[tag=lvlsmp.Eliminated] run scoreboard players set canRevive constant 1
# Überprüfen, ob jemand wiederzubeleben ist

execute if score canRevive constant matches 0 at @e[type=silverfish, tag=lvlsmp.callRevive] run tellraw @p {"text":"Aktuell gibt es niemanden, der wiederbelebt werden kann!","color":"red"}
execute if score canRevive constant matches 0 at @e[type=silverfish, tag=lvlsmp.callRevive] as @p run function lvlsmp:give/revive_book

execute at @e[type=silverfish, tag=lvlsmp.callRevive] run tag @a[tag=lvlsmp.Eliminated, limit=1] add lvlsmp.Reviving
execute if score canRevive constant matches 1 at @e[type=silverfish, tag=lvlsmp.callRevive] as @p run tellraw @a ["",{"selector":"@s"},{"text":" hat "},{"selector":"@a[tag=lvlsmp.Reviving,limit=1]"},{"text":" wiederbelebt!"}]
execute as @e[type=silverfish, tag=lvlsmp.callRevive] run kill @s
# Finde jemanden zum Widerbeleben

execute as @a[tag=lvlsmp.Reviving] run tag @s remove lvlsmp.Eliminated
execute as @a[tag=lvlsmp.Reviving] run scoreboard players set @s lvlsmp.multiplier 4
# Setze Multiplier zurück

execute as @a[tag=lvlsmp.Reviving] run gamerule showDeathMessages false
execute as @a[tag=lvlsmp.Reviving] run kill @s
execute as @a[tag=lvlsmp.Reviving] run gamemode survival @s
execute as @a[tag=lvlsmp.Reviving] run gamerule showDeathMessages true
# Setze in Survival zurück

execute as @a[tag=lvlsmp.Reviving] run tag @s remove lvlsmp.Reviving

scoreboard players set canRevive constant 0