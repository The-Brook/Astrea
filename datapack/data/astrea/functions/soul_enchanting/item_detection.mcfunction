# Soul enchanting
execute as @e[type=item, nbt={Item:{id:"minecraft:enchanted_book"}}, tag=!inSE] at @s unless entity @s[tag=sInvalid] if entity @e[type=item, nbt={Item:{id:"minecraft:diamond"}}, distance=..1] run tag @s add sePhase0
execute as @e[tag=sePhase0] run tag @s add enchBook

# Soul forging
execute as @e[type=item, nbt={Item:{id:"minecraft:enchanted_book",tag:{SoulEnchanted:1}}}, tag=!inSE, tag=!sInvalid] at @s run tag @s add sfBook

execute as @e[type=item, nbt={Item:{id:"minecraft:netherite_pickaxe"}}, tag=!inSE] at @s unless entity @s[tag=sInvalid] if entity @e[tag=sfBook, distance=..1] run tag @s add sfItem
execute as @e[type=item, nbt={Item:{id:"minecraft:netherite_hoe"}}, tag=!inSE] at @s unless entity @s[tag=sInvalid] if entity @e[tag=sfBook, distance=..1] run tag @s add sfItem
execute as @e[type=item, nbt={Item:{id:"minecraft:netherite_axe"}}, tag=!inSE] at @s unless entity @s[tag=sInvalid] if entity @e[tag=sfBook, distance=..1] run tag @s add sfItem
execute as @e[type=item, nbt={Item:{id:"minecraft:netherite_shovel"}}, tag=!inSE] at @s unless entity @s[tag=sInvalid] if entity @e[tag=sfBook, distance=..1] run tag @s add sfItem
execute as @e[type=item, nbt={Item:{id:"minecraft:netherite_sword"}}, tag=!inSE] at @s unless entity @s[tag=sInvalid] if entity @e[tag=sfBook, distance=..1] run tag @s add sfItem
execute as @e[type=item, nbt={Item:{id:"minecraft:bow"}}, tag=!inSE] at @s unless entity @s[tag=sInvalid] if entity @e[tag=sfBook, distance=..1] run tag @s add sfItem
execute as @e[type=item, nbt={Item:{id:"minecraft:crossbow"}}, tag=!inSE] at @s unless entity @s[tag=sInvalid] if entity @e[tag=sfBook, distance=..1] run tag @s add sfItem
execute as @e[type=item, nbt={Item:{id:"minecraft:trident"}}, tag=!inSE] at @s unless entity @s[tag=sInvalid] if entity @e[tag=sfBook, distance=..1] run tag @s add sfItem
execute as @e[type=item, nbt={Item:{id:"minecraft:fishing_rod"}}, tag=!inSE] at @s unless entity @s[tag=sInvalid] if entity @e[tag=sfBook, distance=..1] run tag @s add sfItem
execute as @e[type=item, nbt={Item:{id:"minecraft:netherite_helmet"}}, tag=!inSE] at @s unless entity @s[tag=sInvalid] if entity @e[tag=sfBook, distance=..1] run tag @s add sfItem
execute as @e[type=item, nbt={Item:{id:"minecraft:netherite_chestplate"}}, tag=!inSE] at @s unless entity @s[tag=sInvalid] if entity @e[tag=sfBook, distance=..1] run tag @s add sfItem
execute as @e[type=item, nbt={Item:{id:"minecraft:netherite_leggings"}}, tag=!inSE] at @s unless entity @s[tag=sInvalid] if entity @e[tag=sfBook, distance=..1] run tag @s add sfItem
execute as @e[type=item, nbt={Item:{id:"minecraft:netherite_boots"}}, tag=!inSE] at @s unless entity @s[tag=sInvalid] if entity @e[tag=sfBook, distance=..1] run tag @s add sfItem
execute as @e[type=item, nbt={Item:{id:"minecraft:shield"}}, tag=!inSE] at @s unless entity @s[tag=sInvalid] if entity @e[tag=sfBook, distance=..1] run tag @s add sfItem

execute as @e[tag=sfBook, tag=!inSE, tag=!sInvalid] at @s if entity @e[tag=sfItem, distance=..1] run tag @s add sfPhase0