# ALLE MULTIPLYER WERDEN TECHNISCH MIT 10 MULTIPLIZIERT GESPEICHERT

execute as @a if score @s lvlsmp.multiplyer matches 0 run scoreboard players set @s lvlsmp.multiplyer 10

execute as @a if score @s lvlsmp.unaccountedDeaths > 0 constant if score @s lvlsmp.multiplyer < 11 constant run scoreboard players remove @s lvlsmp.multiplyer 1
execute as @a if score @s lvlsmp.unaccountedDeaths > 0 constant if score @s lvlsmp.multiplyer > 11 constant run scoreboard players remove @s lvlsmp.multiplyer 5
execute as @a if score @s lvlsmp.unaccountedDeaths > 0 constant run scoreboard players remove @s lvlsmp.unaccountedDeaths 1

execute as @a if score @s lvlsmp.unaccountedKills > 0 constant if score @s lvlsmp.multiplyer < 10 constant run scoreboard players add @s lvlsmp.multiplyer 1
execute as @a if score @s lvlsmp.unaccountedKills > 0 constant if score @s lvlsmp.multiplyer > 10 constant run scoreboard players add @s lvlsmp.multiplyer 5
execute as @a if score @s lvlsmp.unaccountedKills > 0 constant run scoreboard players remove @s lvlsmp.unaccountedDeaths 1

# 11 und 10 einfach, weil man sich wegen der Konstanten auf irgendwas einigen muss, und die reichen aus, wenn man lediglich
# Abstände von 0.5 bzw 0.1 hat