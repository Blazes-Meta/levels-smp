execute as @a unless score @s lvlsmp.gotItem = @s lvlsmp.gotItem run scoreboard players set @s lvlsmp.gotItem 0

execute as @a[scores={lvlsmp.multiplier=50, lvlsmp.gotItem=0}] run function lvlsmp:give/revive_book
execute as @a[scores={lvlsmp.multiplier=50, lvlsmp.gotItem=0}] run scoreboard players set @s lvlsmp.gotItem 1

# weil non stackable hier kommentiert
# execute as @a if score @s lvlsmp.gotItem matches 1 if score @s lvlsmp.multiplier < 50 constant run scoreboard players set @s lvlsmp.gotItem 0