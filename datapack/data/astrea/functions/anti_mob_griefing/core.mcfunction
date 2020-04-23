# Runs anti-creeper if needed
execute as @a at @s if entity @e[type=creeper, tag=!noexplo, sort=nearest] run function astrea:anti_mob_griefing/anti_creeper
execute as @a at @s if entity @e[type=fireball, tag=!noexplo, sort=nearest] run function astrea:anti_mob_griefing/anti_ghast