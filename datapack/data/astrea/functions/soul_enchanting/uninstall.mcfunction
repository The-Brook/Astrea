# Disable module in storage
data remove storage astrea:soul_enchanting enabled

# Removes the scoreboards
scoreboard objectives remove enchLvl
scoreboard objectives remove sValidity

# Message
title @s actionbar {"color":"#ffef08","bold":"true","text":"Successfully disabled soul enchanting module"}