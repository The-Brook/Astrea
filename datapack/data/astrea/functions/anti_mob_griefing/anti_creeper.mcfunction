execute as @s at @s run tag @e[type=creeper, tag=!noexplo, sort=nearest] add explo
execute as @e[type=creeper, tag=explo, sort=nearest] run data modify entity @s ExplosionRadius set value 0
execute as @e[type=creeper, tag=explo, sort=nearest] run tag @s add noexplo