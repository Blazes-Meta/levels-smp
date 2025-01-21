# ALLE MULTIPLIER WERDEN TECHNISCH MIT 10 MULTIPLIZIERT GESPEICHERT

execute as @a if score @s lvlsmp.multiplier matches 0 run scoreboard players set @s lvlsmp.multiplier 10

execute as @a[scores={lvlsmp.unaccountedDeaths=1.., lvlsmp.multiplier=..10}] run scoreboard players remove @s lvlsmp.multiplier 1
execute as @a[scores={lvlsmp.unaccountedDeaths=1.., lvlsmp.multiplier=11..}] run scoreboard players remove @s lvlsmp.multiplier 5
execute as @a[scores={lvlsmp.unaccountedDeaths=1..}] run scoreboard players remove @s lvlsmp.unaccountedDeaths 1

execute as @a[scores={lvlsmp.unaccountedKills=1.., lvlsmp.multiplier=..9}] run scoreboard players add @s lvlsmp.multiplier 1
execute as @a[scores={lvlsmp.unaccountedKills=1.., lvlsmp.multiplier=10..}] run scoreboard players add @s lvlsmp.multiplier 5
execute as @a[scores={lvlsmp.unaccountedKills=1..}] run scoreboard players remove @s lvlsmp.unaccountedDeaths 1

# 9, 10 und 11 einfach, weil man sich wegen der Konstanten auf irgendwas einigen muss, und die reichen aus, wenn man lediglich
# Abstände von 0.5 bzw 0.1 hat