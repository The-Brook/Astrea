# Adds a tag for the xp orb that will clump the other
tag @s add xpClumper

# Adds a tag for the xp orb that will be clumped
execute as @s at @s run tag @e[type=minecraft:experience_orb, distance=..5, limit=1, sort=nearest, tag=!xpClumper] add xpClumped

# Stores the value of the clumper xp orb in a scoreboard
execute as @s store result score @s xpClLv run data get entity @s Value 1

# Stores the value of the clumped xp orb in a scoreboard
execute as @s at @s store result score @e[tag=xpClumped, limit=1, sort=nearest] xpClLv run data get entity @e[tag=xpClumped, limit=1, sort=nearest] Value 1

# Adds the value of the two xp orbs
scoreboard players operation @s xpClLv += @e[tag=xpClumped, limit=1, sort=nearest] xpClLv

# Transfers the score to the Value NBT tag
execute store result entity @s Value int 1 run scoreboard players get @s xpClLv

# Kills the clumped xp orb
kill @e[tag=xpClumped]

# Removes the tag of the xp clumper
scoreboard players reset @s xpClLv

# Removes the tag of the xp clumper
tag @s remove xpClumper