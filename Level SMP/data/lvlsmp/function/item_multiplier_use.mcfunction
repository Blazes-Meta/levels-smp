execute as @a unless score @s lvlsmp.permanentMultiplierUses = @s lvlsmp.permanentMultiplierUses run scoreboard players set @s lvlsmp.permanentMultiplierUses 0

execute at @e[type=silverfish, tag=lvlsmp.callMultiplier] as @p if score @s lvlsmp.permanentMultiplierUses < permanentMultiplierCap lvlsmp.settings run scoreboard players add @s lvlsmp.multiplier 5
execute at @e[type=silverfish, tag=lvlsmp.callMultiplier] as @p if score @s lvlsmp.permanentMultiplierUses < permanentMultiplierCap lvlsmp.settings run tellraw @s ["",{"text":"Du hast nun ","color":"red"},{"score":{"name":"@s","objective":"lvlsmp.permanentMultiplierUses"},"color":"red"},{"text":" von ","color":"red"},{"score":{"name":"permanentMultiplierCap","objective":"lvlsmp.settings"},"color":"red"},{"text":" permanenten Multipliern benutzt","color":"red"}]

execute at @e[type=silverfish, tag=lvlsmp.callMultiplier] as @p if score @s lvlsmp.permanentMultiplierUses < permanentMultiplierCap lvlsmp.settings run scoreboard players add @s lvlsmp.permanentMultiplierUses 1

execute at @e[type=silverfish, tag=lvlsmp.callMultiplier] as @p if score @s lvlsmp.permanentMultiplierUses >= permanentMultiplierCap lvlsmp.settings run tellraw @s ["",{"text":"Du hast bereits ","color":"red"},{"score":{"name":"@s","objective":"lvlsmp.permanentMultiplierUses"},"color":"red"},{"text":" von ","color":"red"},{"score":{"name":"permanentMultiplierCap","objective":"lvlsmp.settings"},"color":"red"},{"text":" permanenten Multipliern benutzt!","color":"red"}]
execute at @e[type=silverfish, tag=lvlsmp.callMultiplier] as @p if score @s lvlsmp.permanentMultiplierUses >= permanentMultiplierCap lvlsmp.settings run function lvlsmp:give/permanent_multiplier

execute as @e[type=silverfish, tag=lvlsmp.callMultiplier] run kill @s