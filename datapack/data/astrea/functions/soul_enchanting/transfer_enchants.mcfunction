# Adds a NBT tag with the first enchantment of the Soul Enchanted Book 
execute as @s at @s run data modify entity @s Item.tag.FirstEnchantment set from entity @e[tag=vXP, sort=nearest, tag=!sInvalid, limit=1] Item.tag.StoredEnchantments[0].id

# Removes the corresponding enchantment of the sfItem
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:efficiency"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:efficiency"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:unbreaking"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:unbreaking"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:fortune"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:fortune"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:luck_of_the_sea"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:luck_of_the_sea"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:lure"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:lure"}]

execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:protection"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:protection"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:fire_protection"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:fire_protection"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:feather_falling"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:feather_falling"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:blast_protection"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:blast_protection"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:projectile_protection"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:projectile_protection"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:respiration"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:respiration"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:thorns"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:thorns"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:depth_strider"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:depth_strider"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:frost_walker"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:frost_walker"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:soul_speed"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:soul_speed"}]

execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:sharpness"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:sharpness"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:smite"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:smite"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:bane_of_arthropods"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:bane_of_arthropods"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:knockback"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:knockback"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:fire_aspect"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:fire_aspect"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:looting"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:looting"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:sweeping"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:sweeping"}]

execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:power"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:power"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:punch"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:punch"}]

execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:loyalty"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:loyalty"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:impaling"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:impaling"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:riptide"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:riptide"}]

execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:quick_charge"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:quick_charge"}]
execute as @s if entity @s[nbt={Item:{tag:{FirstEnchantment:"minecraft:piercing"}}}] run data remove entity @s Item.tag.Enchantments[{id:"minecraft:piercing"}]

# Removes the now useless NBT tag of the sfItem
data remove entity @s Item.tag.FirstEnchantment