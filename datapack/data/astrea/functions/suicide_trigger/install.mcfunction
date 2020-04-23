# Scoreboard for suicide trigger
scoreboard objectives add suicide trigger "Suicide"

# Enable module in storage
data modify storage astrea:suicide_trigger enabled set value 1

# Message
title @s actionbar {"color":"#ffef08","bold":"true","text":"Successfully enabled suicide trigger module"}