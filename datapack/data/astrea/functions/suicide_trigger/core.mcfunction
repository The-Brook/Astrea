# Enables suicide scoreboard for everyone
scoreboard players enable @a suicide
# Runs suicide function if needed
execute as @e[scores={suicide=1..}] run function astrea:suicide_trigger/suicide