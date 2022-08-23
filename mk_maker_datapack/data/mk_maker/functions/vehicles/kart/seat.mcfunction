scoreboard players operation vehicle_id storage = @s vehicle_id
tag @e remove active_vehicle
execute as @e[tag=vehicle,tag=kart] if score @s vehicle_id = vehicle_id storage run tag @s add active_vehicle

execute at @e[tag=active_vehicle] run tp @s ~ ~-0.6 ~ ~ ~

execute unless entity @e[tag=active_vehicle] run function mk_maker:utilities/die
