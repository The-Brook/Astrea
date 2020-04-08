# Removes scoreboards
scoreboard objectives remove suicide

# Disable module in storage
data remove storage astrea:suicide_trigger enabled

# Message
tellraw @s {"color":"yellow","bold":"true","text":"Successfully disabled suicide trigger module"}