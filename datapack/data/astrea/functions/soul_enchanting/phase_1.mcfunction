# Remove phase 0 tag
tag @s remove sePhase0

# Displays the particles
execute as @e[tag=sLtrn] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0 1 normal
execute as @e[tag=soul] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.025 0 0.025 0 1 normal
execute as @e[tag=sEnchCtr, tag=!iter] at @s run particle minecraft:ash ~ ~1 ~ 1 1 1 0 150 normal

# Plays the sound
execute as @e[tag=sEnchCtr, tag=!iter] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a ~ ~ ~ 1 0
execute as @e[tag=sEnchCtr, tag=!iter] at @s run playsound minecraft:entity.phantom.ambient ambient @a ~ ~ ~ 1 0

# Animates the soul
execute as @e[tag=soul] at @s run teleport @s ~ ~ ~ facing entity @e[tag=sEnchCtr, limit=1]
execute as @e[tag=soul] at @s run teleport @s ^0.02 ^0.02 ^0.02

# Adds a tag to do certain tasks only one time
execute as @e[tag=sEnchCtr] run tag @s add iter

# Starts phase 2
execute as @e[tag=sePhase1] at @e[tag=sEnchCtr] if entity @e[tag=soul, distance=..0.1] run tag @s add sePhase2
