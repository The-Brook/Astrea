# Removes the command feedback and the command block output
gamerule sendCommandFeedback false
gamerule commandBlockOutput false

# Adds Astrea configuration scoreboard
scoreboard objectives add astreaCfg trigger "Astrea Configuration"

# Adds a tag
tag @s add astreaAdmin

# Message
tellraw @s {"color":"#ffef08","bold":"true","text":"Successfully installed Astrea !"}
function astrea:version
tellraw @s {"color":"#fff670","italic":"true","text":"by The_Br00k"}
tellraw @s {"text":"Learn to configure the data pack","color":"#ffef08","underlined":"true","clickEvent": {"action":"open_url","value":"https://github.com/The-Brook/Astrea/wiki/Configuration"}}