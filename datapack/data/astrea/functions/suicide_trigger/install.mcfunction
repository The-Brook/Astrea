# Scoreboard for suicide trigger
scoreboard objectives add suicide trigger "Suicide"

# Enable module in storage
data modify storage astrea:suicide_trigger enabled set value 1

# Message
tellraw @s {"color":"yellow","bold":"true","text":"Successfully enabled suicide trigger module"}