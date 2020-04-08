# Detects enchantements stored in the enchanted book
execute as @s if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:silk_touch"}]}}}] run tag @s add sInvalid
execute as @s if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}}] run tag @s add sInvalid
execute as @s if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:curse_of_vanishing"}]}}}] run tag @s add sInvalid
execute as @s if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:curse_of_binding"}]}}}] run tag @s add sInvalid
execute as @s if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:channeling"}]}}}] run tag @s add sInvalid
execute as @s if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:infinity"}]}}}] run tag @s add sInvalid
execute as @s if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:flame"}]}}}] run tag @s add sInvalid
execute as @s if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:aqua_affinity"}]}}}] run tag @s add sInvalid