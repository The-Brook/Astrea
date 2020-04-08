# Enables kill scoreboard for everyone
scoreboard players enable @a suicide
# Runs suicide function if needed
execute as @e[scores={suicide=1..}] run function astrea:server_utils/suicide

# Runs anti-creeper if needed
execute as @a at @s if entity @e[type=creeper, tag=!noexplo, sort=nearest] run function astrea:server_utils/anti_creeper