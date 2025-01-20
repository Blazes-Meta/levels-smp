execute as @a if score @s lvlsmp.multiplyer matches 50 if score @s lvlsmp.gotItem matches 0 run say "Ich müsste jetzt das Item bekommen"
execute as @a if score @s lvlsmp.multiplyer matches 50 if score @s lvlsmp.gotItem matches 0 run scoreboard players set @s lvlsmp.gotItem 1

execute as @a if score @s lvlsmp.gotItem matches 1 if score @s lvlsmp.multiplyer < 50 constant run scoreboard players set @s lvlsmp.gotItem 0