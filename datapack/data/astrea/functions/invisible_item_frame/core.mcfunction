# Detects potions thrown on item frames and tags the item frame
execute as @e[type=minecraft:item_frame, tag=!invItemF] at @s if entity @e[type=minecraft:potion, nbt={Item:{tag:{Potion:"minecraft:invisibility"}}}, distance=..1] run tag @s add invItemF

# Makes visible or invisible
execute as @e[tag=invItemF, tag=holdsItem, nbt=!{Item:{Count:1b}}] run function astrea:invisible_item_frame/make_visible
execute as @e[tag=invItemF, tag=!holdsItem, nbt={Item:{Count:1b}}] run function astrea:invisible_item_frame/make_invisible