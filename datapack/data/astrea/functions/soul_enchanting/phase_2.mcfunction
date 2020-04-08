# Remove phase 2 tag
tag @s remove sePhase1

# Adds a scoreboard to store the enchantment level
scoreboard objectives add enchLvl dummy "Enchantment Level"

# Stores the enchantment level in a scoreboard
execute store result score @s enchLvl run data get entity @s Item.tag.StoredEnchantments[0].lvl 1

# Adds one level to the scoreboard
scoreboard players add @s enchLvl 1

# Stores the result in the enchantment tag
execute store result entity @s Item.tag.StoredEnchantments[0].lvl int 1 run scoreboard players get @s enchLvl

# Adds SoulEnchanted tag to identify soul enchanted books
data modify entity @s Item.tag.SoulEnchanted set value 1

# Adds a display name to the book
data modify entity @s Item.tag.display.Name set value "{\"text\":\"Soul Enchanted Book\",\"color\":\"yellow\",\"italic\":\"false\"}"

# Displays particles
execute as @e[tag=sEnchCtr] at @s run particle minecraft:soul ~ ~ ~ 0.75 0.75 0.75 0 100 normal

# Plays sounds
execute as @e[tag=sEnchCtr] at @s run playsound minecraft:block.beacon.deactivate ambient @a ~ ~ ~ 1 0
execute as @e[tag=sEnchCtr] at @s run playsound minecraft:entity.blaze.death ambient @a ~ ~ ~ 1 0.5

# Allows player to pick the item up
data merge entity @s {PickupDelay:50s}

# Kills netherite ingot and armor stands
execute as @s at @s run kill @e[tag=ntrite, distance=..3]
execute as @s at @s run kill @e[tag=sEnch, distance=..3]

# Removes phase 2 tag
tag @s remove sePhase2