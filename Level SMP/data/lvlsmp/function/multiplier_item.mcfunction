execute as @a[scores={lvlsmp.multiplier=50, lvlsmp.gotItem=0}] run give @s silverfish_spawn_egg[max_stack_size=1,custom_name='"Revive Book"',item_name='"Revive Book"',rarity="epic",enchantment_glint_override=true,entity_data={id:"minecraft:silverfish",Silent:1b,Tags:["Revive"]},minecraft:item_model="minecraft:structure_void"] 1
execute as @a[scores={lvlsmp.multiplier=50, lvlsmp.gotItem=0}] run scoreboard players set @s lvlsmp.gotItem 1

# weil non stackable hier kommentiert
# execute as @a if score @s lvlsmp.gotItem matches 1 if score @s lvlsmp.multiplier < 50 constant run scoreboard players set @s lvlsmp.gotItem 0