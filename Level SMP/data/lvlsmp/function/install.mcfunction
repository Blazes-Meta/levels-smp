scoreboard objectives add lvlsmp.settings dummy
scoreboard objectives add lvlsmp.level level
scoreboard objectives add lvlsmp.addHealth dummy
scoreboard objectives add lvlsmp.multiplier dummy
scoreboard objectives add lvlsmp.unaccountedKills playerKillCount
scoreboard objectives add lvlsmp.unaccountedDeaths deathCount
scoreboard objectives add lvlsmp.setMultiplier dummy
scoreboard objectives add lvlsmp.healthCalc dummy
scoreboard objectives add lvlsmp.gotItem dummy
scoreboard objectives add lvlsmp.permanentMultiplierUses dummy

scoreboard objectives add constant dummy
scoreboard players set 0 constant 0
scoreboard players set 10 constant 10
scoreboard players set 11 constant 11

# Settings
scoreboard players set increaseCost lvlsmp.settings 20
scoreboard players set healthPerIncrease lvlsmp.settings 2
scoreboard players set increasesCap lvlsmp.settings 10
scoreboard players set banOn0Multiplier lvlsmp.settings 1
scoreboard players set permanentMultiplierCap lvlsmp.settings 1