# Adds a scoreboard for XP Clumping Level
scoreboard objectives add xpClLv dummy "XP Clumping Level"

# Enable module in storage
data modify storage astrea:xp_clumping enabled set value 1

# Message
title @s actionbar {"color":"#ffef08","bold":"true","text":"Successfully enabled XP Clumping module"}