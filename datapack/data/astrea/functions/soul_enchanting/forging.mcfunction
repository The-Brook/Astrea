# Summons an armor stand on the center of the structure
execute as @s[tag=!sInvalid] at @s align xyz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Invisible:1,NoGravity:1,Marker:1,Small:1,Tags:["sEnchCtr","sEnch"]}

# Checks if the structure is valid
function astrea:soul_enchanting/structure_detection

# Tags item if invalid
execute as @s at @s if entity @e[tag=sEnchCtr, tag=sInvalid, distance=..2] run tag @s add sInvalid

# Tags item if valid
execute as @s[tag=!sInvalid] at @s if entity @e[tag=sValid, distance=..2] run tag @s add sValid

# If nearest player has enough XP tags himself
execute at @e[tag=!sInvalid] if entity @p[level=30..] run tag @s add vXP
execute at @e[tag=!sInvalid] if entity @p[gamemode=creative] run tag @s add vXP

# Removes 5 experience levels to the player
execute at @s[tag=vXP, tag=!sInvalid] as @p run experience add @s -5 levels

# Plays sounds
execute as @s[tag=vXP, tag=!sInvalid] at @s run playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 1 1
execute as @s[tag=vXP, tag=!sInvalid] at @s run playsound minecraft:entity.phantom.hurt ambient @a ~ ~ ~ 1 0

execute as @s[tag=vXP, tag=!sInvalid] at @s run particle minecraft:enchant ~ ~1 ~ 0.75 0.75 0.75 0 100 normal
execute as @s[tag=vXP, tag=!sInvalid] at @s run particle minecraft:soul ~ ~ ~ 0.75 0.75 0.75 0 100 normal

# Transfers the enchantments
execute as @e[tag=sfItem] at @s run function astrea:soul_enchanting/transfer_enchants
execute as @e[tag=sfItem] at @s run data modify entity @s Item.tag.Enchantments append from entity @e[tag=vXP, tag=!sInvalid, limit=1] Item.tag.StoredEnchantments[]
execute as @s[tag=vXP, tag=!sInvalid] run kill @s