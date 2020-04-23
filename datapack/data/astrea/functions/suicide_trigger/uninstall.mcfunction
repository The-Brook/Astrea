# Removes scoreboards
scoreboard objectives remove suicide

# Disable module in storage
data remove storage astrea:suicide_trigger enabled

# Message
title @s actionbar {"color":"#ffef08","bold":"true","text":"Successfully disabled suicide trigger module"}