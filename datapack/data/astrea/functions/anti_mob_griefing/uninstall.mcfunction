# Removes all the tags
tag @e remove noexplo
tag @e remove explo

# Disable module in storage
data remove storage astrea:anti_mob_griefing enabled

# Message
tellraw @s {"color":"yellow","bold":"true","text":"Successfully disabled anti mob griefing module"}