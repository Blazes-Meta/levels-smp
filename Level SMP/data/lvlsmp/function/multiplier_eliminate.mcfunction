execute as @a[scores={lvlsmp.multiplier=0},tag=!lvlsmp.Eliminated] run tellraw @a ["",{"selector":"@s"},{"text":" wurde eliminiert"}]
execute as @a[scores={lvlsmp.multiplier=0}] run tag @s add lvlsmp.Eliminated

execute as @a[tag=lvlsmp.Eliminated] run gamemode spectator @s
execute as @a[tag=lvlsmp.Eliminated] run tp @s 0 1000 0