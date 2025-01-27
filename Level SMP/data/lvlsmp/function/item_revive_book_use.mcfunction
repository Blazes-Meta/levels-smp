execute at @e[type=silverfish, tag=lvlsmp.callRevive] run tag @a[tag=lvlsmp.Eliminated, limit=1] add lvlsmp.Reviving
execute as @e[type=silverfish, tag=lvlsmp.callRevive] run kill @s
# Finde jemanden zum Widerbeleben

execute as @a[tag=lvlsmp.Reviving] run tag @s remove lvlsmp.Eliminated
execute as @a[tag=lvlsmp.Reviving] run scoreboard players set @s lvlsmp.multiplier 4
# Setze Multiplier zurück

execute as @a[tag=lvlsmp.Reviving] run kill @s
execute as @a[tag=lvlsmp.Reviving] run gamemode survival @s
# Setze in Survival zurück

execute as @a[tag=lvlsmp.Reviving] run tag @s remove lvlsmp.Reviving