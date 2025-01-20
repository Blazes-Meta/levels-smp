execute as @a run scoreboard players operation @s lvlsmp.healthCalc = @s lvlsmp.level
# Übernimmt die Level

execute as @a run scoreboard players operation @s lvlsmp.healthCalc /= increaseCost lvlsmp.settings
# Teilt die Level durch die Level-Kosten pro Health -> Anzahl der Zusatzhealth-Portionen verbleibt

execute as @a if score @s lvlsmp.healthCalc > increasesCap lvlsmp.settings run scoreboard players operation @s lvlsmp.healthCalc = increasesCap lvlsmp.settings
# Capped die Anzahl der Zusatzhealth-Portionen

execute as @a run scoreboard players operation @s lvlsmp.healthCalc *= healthPerIncrease lvlsmp.settings
# Multipliziert die Zusatzhealth-Portionen mit den Health pro Portion

# execute as @a run scoreboard players add @s lvlsmp.healthCalc 20
# # Addiere 20, damit es wirklich eine Zunahme zum normalen Health wird

execute as @a run scoreboard players operation @s lvlsmp.addHealth = @s lvlsmp.healthCalc