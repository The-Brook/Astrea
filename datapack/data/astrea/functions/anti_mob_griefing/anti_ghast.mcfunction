execute as @s at @s run tag @e[type=fireball, tag=!noexplo, sort=nearest] add explo
execute as @e[type=fireball, tag=explo, sort=nearest] run data modify entity @s ExplosionPower set value 0
execute as @e[type=fireball, tag=explo, sort=nearest] run tag @s add noexplo