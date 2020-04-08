# Adds a tag for items already in a soul enchanting ritual
tag @s add inSE

# Summons an armor stand on the center of the structure
execute as @s[tag=!sInvalid] at @s align xyz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Invisible:1,NoGravity:1,Marker:1,Small:1,Tags:["sEnchCtr","sEnch"]}

# Checks if the structure is valid
function astrea:soul_enchanting/structure_detection
# Checks if the enchantment is valid
function astrea:soul_enchanting/enchantment_detection
# Checks if it is not a Soul Enchanted Book
execute as @s[nbt={Item:{tag:{SoulEnchanted:1}}}] run tag @s add soulEnch

# Tags item if invalid
execute as @s at @s if entity @e[tag=sInvalid, distance=..2] run tag @s add sInvalid

# Tags item if valid
execute as @s[tag=!sInvalid] at @s if entity @e[tag=sValid, distance=..2] run tag @s add sValid

# Tags the netherite ingot
execute at @s as @e[type=item, nbt={Item:{id:"minecraft:netherite_ingot"}}, distance=..1] run tag @s add ntrite

# Adds pickup delay to items not to accidentally pick them up
execute at @s[tag=sValid, tag=!sInvalid, tag=!soulEnch] as @e[tag=ntrite, distance=..1] run data merge entity @s {PickupDelay:10000s}
data merge entity @s[tag=sValid, tag=!sInvalid, tag=!soulEnch] {PickupDelay:10000s}

# Summons the flame lantern particles armor stands
execute as @s[tag=sValid, tag=!sInvalid, tag=!soulEnch] at @s align xyz run summon minecraft:armor_stand ~2.5 ~0.25 ~2.5 {Invisible:1,NoGravity:1,Marker:1,Small:1,Tags:["sEnchCr1","sEnch","sLtrn"]}
execute as @s[tag=sValid, tag=!sInvalid, tag=!soulEnch] at @s align xyz run summon minecraft:armor_stand ~-1.5 ~0.25 ~2.5 {Invisible:1,NoGravity:1,Marker:1,Small:1,Tags:["sEnchCr2","sEnch","sLtrn"]}
execute as @s[tag=sValid, tag=!sInvalid, tag=!soulEnch] at @s align xyz run summon minecraft:armor_stand ~2.5 ~0.25 ~-1.5 {Invisible:1,NoGravity:1,Marker:1,Small:1,Tags:["sEnchCr3","sEnch","sLtrn"]}
execute as @s[tag=sValid, tag=!sInvalid, tag=!soulEnch] at @s align xyz run summon minecraft:armor_stand ~-1.5 ~0.25 ~-1.5 {Invisible:1,NoGravity:1,Marker:1,Small:1,Tags:["sEnchCr4","sEnch","sLtrn"]}

# Summons the souls armor stands
execute as @s[tag=sValid, tag=!sInvalid, tag=!soulEnch] at @s align xyz run summon minecraft:armor_stand ~2.5 ~0.5 ~2.5 {Invisible:1,NoGravity:1,Marker:1,Small:1,Tags:["sEnchCr1","sEnch","soul"]}
execute as @s[tag=sValid, tag=!sInvalid, tag=!soulEnch] at @s align xyz run summon minecraft:armor_stand ~-1.5 ~0.5 ~2.5 {Invisible:1,NoGravity:1,Marker:1,Small:1,Tags:["sEnchCr2","sEnch","soul"]}
execute as @s[tag=sValid, tag=!sInvalid, tag=!soulEnch] at @s align xyz run summon minecraft:armor_stand ~2.5 ~0.5 ~-1.5 {Invisible:1,NoGravity:1,Marker:1,Small:1,Tags:["sEnchCr3","sEnch","soul"]}
execute as @s[tag=sValid, tag=!sInvalid, tag=!soulEnch] at @s align xyz run summon minecraft:armor_stand ~-1.5 ~0.5 ~-1.5 {Invisible:1,NoGravity:1,Marker:1,Small:1,Tags:["sEnchCr4","sEnch","soul"]}

# Changes phase tags
tag @s[tag=sValid, tag=!sInvalid, tag=!soulEnch] add sePhase1

# Kills the armor stands if invalid
execute as @s[tag=sInvalid, tag=!soulEnch] at @s run kill @e[tag=sEnch, distance=..3]