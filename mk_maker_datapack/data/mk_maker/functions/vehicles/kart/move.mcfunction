execute if entity @a[tag=riding_player,tag=wasd.w] run scoreboard players add @s speed 2
execute if entity @a[tag=riding_player,tag=wasd.s] if score @s speed matches -30.. run scoreboard players remove @s speed 2

execute if score @s speed matches 1.. run scoreboard players operation @s speed *= friction storage
execute if score @s speed matches 1.. run scoreboard players operation @s speed /= friction1 storage

execute if score @s speed matches ..-1 run scoreboard players add @s speed 1

execute store result score movement storage run scoreboard players get @s speed
execute if score movement storage matches 1.. run function mk_maker:vehicles/kart/move/forward
execute if score movement storage matches ..-1 run function mk_maker:vehicles/kart/move/reverse
