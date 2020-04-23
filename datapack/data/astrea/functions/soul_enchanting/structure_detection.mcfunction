# Creates a new scoreboard to check structure valididty
scoreboard objectives add sValidity dummy "Structure validity"
scoreboard players reset @e[tag=sEnchCtr] sValidity

# Testing for the bocks of the structure
execute as @e[tag=sEnchCtr] at @s if block ~ ~-1 ~ minecraft:crying_obsidian run scoreboard players add @s sValidity 1

execute as @e[tag=sEnchCtr] at @s if block ~-1 ~-1 ~ minecraft:netherite_block run scoreboard players add @s sValidity 1
execute as @e[tag=sEnchCtr] at @s if block ~1 ~-1 ~ minecraft:netherite_block run scoreboard players add @s sValidity 1
execute as @e[tag=sEnchCtr] at @s if block ~ ~-1 ~-1 minecraft:netherite_block run scoreboard players add @s sValidity 1
execute as @e[tag=sEnchCtr] at @s if block ~ ~-1 ~1 minecraft:netherite_block run scoreboard players add @s sValidity 1

execute as @e[tag=sEnchCtr] at @s if block ~1 ~-1 ~1 minecraft:soul_soil run scoreboard players add @s sValidity 1
execute as @e[tag=sEnchCtr] at @s if block ~-1 ~-1 ~1 minecraft:soul_soil run scoreboard players add @s sValidity 1
execute as @e[tag=sEnchCtr] at @s if block ~1 ~-1 ~-1 minecraft:soul_soil run scoreboard players add @s sValidity 1
execute as @e[tag=sEnchCtr] at @s if block ~-1 ~-1 ~-1 minecraft:soul_soil run scoreboard players add @s sValidity 1

execute as @e[tag=sEnchCtr] at @s if block ~2 ~ ~2 minecraft:polished_basalt[axis=y] run scoreboard players add @s sValidity 1
execute as @e[tag=sEnchCtr] at @s if block ~-2 ~ ~2 minecraft:polished_basalt[axis=y] run scoreboard players add @s sValidity 1
execute as @e[tag=sEnchCtr] at @s if block ~2 ~ ~-2 minecraft:polished_basalt[axis=y] run scoreboard players add @s sValidity 1
execute as @e[tag=sEnchCtr] at @s if block ~-2 ~ ~-2 minecraft:polished_basalt[axis=y] run scoreboard players add @s sValidity 1

execute as @e[tag=sEnchCtr] at @s if block ~2 ~1 ~2 minecraft:soul_lantern[hanging=false] run scoreboard players add @s sValidity 1
execute as @e[tag=sEnchCtr] at @s if block ~-2 ~1 ~2 minecraft:soul_lantern[hanging=false] run scoreboard players add @s sValidity 1
execute as @e[tag=sEnchCtr] at @s if block ~2 ~1 ~-2 minecraft:soul_lantern[hanging=false] run scoreboard players add @s sValidity 1
execute as @e[tag=sEnchCtr] at @s if block ~-2 ~1 ~-2 minecraft:soul_lantern[hanging=false] run scoreboard players add @s sValidity 1

# Checks if the addition of all the the scores matches the complete structure
execute as @e[tag=sEnchCtr] if entity @s[scores={sValidity=17}] run tag @s add sValid
execute as @e[tag=sEnchCtr] unless entity @s[scores={sValidity=17}] run tag @s add sInvalid
#execute as @e[tag=sEnchCtr] if entity @s[scores={sValidity=17}] run say sValid
#execute as @e[tag=sEnchCtr] unless entity @s[scores={sValidity=17}] run say sInvalid