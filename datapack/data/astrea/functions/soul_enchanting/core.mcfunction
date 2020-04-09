# Phase -1 : Item detection
function astrea:soul_enchanting/item_detection

# Phase 0 : Structure detection and summoning
execute as @e[type=item, tag=sePhase0] unless entity @s[tag=sInvalid] run function astrea:soul_enchanting/phase_0

# Tags armor stand if an item is absent
execute as @e[tag=sEnchCtr] at @s unless entity @e[tag=enchBook, distance=..2] run data merge entity @e[tag=diamondSE, distance=..2, limit=1, sort=nearest] {PickupDelay:0s}
execute as @e[tag=sEnchCtr] at @s unless entity @e[tag=diamondSE, distance=..2] run tag @s add itmPick

# Allows the item to be picked
execute as @e[tag=sEnchCtr] at @s unless entity @e[tag=enchBook, distance=..2] run tag @s add itmPick
execute as @e[tag=sEnchCtr] at @s unless entity @e[tag=diamondSE, distance=..2] run data merge entity @e[tag=enchBook, distance=..2, limit=1, sort=nearest] {PickupDelay:0s}

# Resets if an item is absent
execute as @e[tag=itmPick] at @s run kill @e[tag=sEnch, distance=..3]

# Phase 1 : 
execute as @e[type=item, tag=sePhase1] unless entity @s[tag=sInvalid] run function astrea:soul_enchanting/phase_1

# Phase 2 : 
execute as @e[type=item, tag=sePhase2] unless entity @s[tag=sInvalid] run function astrea:soul_enchanting/phase_2

# Soul Forging
execute as @e[tag=sfPhase0] unless entity @s[tag=sInvalid] run function astrea:soul_enchanting/forging