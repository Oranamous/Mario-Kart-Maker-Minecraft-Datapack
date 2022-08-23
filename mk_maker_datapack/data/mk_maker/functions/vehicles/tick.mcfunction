scoreboard players reset @a vehicle_id
execute as @e[tag=kart] at @s run function mk_maker:vehicles/kart/tick
execute as @e[tag=seat,tag=kart_part] at @s run function mk_maker:vehicles/kart/seat
