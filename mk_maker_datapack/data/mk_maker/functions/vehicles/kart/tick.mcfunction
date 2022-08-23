scoreboard players operation vehicle_id storage = @s vehicle_id
tag @e remove active_seat
execute as @e[tag=seat,tag=kart_part] if score @s vehicle_id = vehicle_id storage run tag @s add active_seat
tag @a remove riding_player
execute at @e[tag=active_seat] positioned ~ ~0.325 ~ run tag @p[distance=..0.00001] add riding_player
scoreboard players operation @p[tag=riding_player] vehicle_id = vehicle_id storage

execute if entity @a[tag=riding_player] run data merge entity @s[nbt={Marker:1b}] {Marker:0b}
execute unless entity @a[tag=riding_player] run data merge entity @s[nbt={Marker:0b}] {Marker:1b}

execute unless block ~-0.4 ~0.1 ~-0.4 #mk_maker:air if block ~-0.4 ~1 ~-0.4 #mk_maker:air run tp @s ~ ~0.5 ~
execute unless block ~-0.4 ~0.1 ~0.4 #mk_maker:air if block ~-0.4 ~1 ~0.4 #mk_maker:air run tp @s ~ ~0.5 ~
execute unless block ~0.4 ~0.1 ~-0.4 #mk_maker:air if block ~0.4 ~1 ~-0.4 #mk_maker:air run tp @s ~ ~0.5 ~
execute unless block ~0.4 ~0.1 ~0.4 #mk_maker:air if block ~0.4 ~1 ~0.4 #mk_maker:air run tp @s ~ ~0.5 ~
execute if block ~-0.4 ~-0.25 ~-0.4 #mk_maker:air if block ~-0.4 ~-0.25 ~0.4 #mk_maker:air if block ~0.4 ~-0.25 ~-0.4 #mk_maker:air if block ~0.4 ~-0.25 ~0.4 #mk_maker:air run tp @s ~ ~-0.25 ~

execute if entity @s[tag=!hit] run function mk_maker:vehicles/kart/move

tp @e[tag=active_seat] ~ ~-0.6 ~ ~ ~

execute if score @s speed matches ..-1 run title @p[tag=riding_player] actionbar [{"text":"[","color":"white"},{"text":"■■■■■■■■■","color":"aqua"},{"text":"]","color":"white"}]
execute if score @s speed matches 0..9 run title @p[tag=riding_player] actionbar [{"text":"[","color":"white"},{"text":"■■■■■■■■■","color":"dark_gray"},{"text":"]","color":"white"}]
execute if score @s speed matches 10..19 run title @p[tag=riding_player] actionbar [{"text":"[","color":"white"},{"text":"■","color":"white"},{"text":"■■■■■■■■","color":"dark_gray"},{"text":"]","color":"white"}]
execute if score @s speed matches 20..29 run title @p[tag=riding_player] actionbar [{"text":"[","color":"white"},{"text":"■■","color":"white"},{"text":"■■■■■■■","color":"dark_gray"},{"text":"]","color":"white"}]
execute if score @s speed matches 30..39 run title @p[tag=riding_player] actionbar [{"text":"[","color":"white"},{"text":"■■","color":"white"},{"text":"■","color":"green"},{"text":"■■■■■■","color":"dark_gray"},{"text":"]","color":"white"}]
execute if score @s speed matches 40..49 run title @p[tag=riding_player] actionbar [{"text":"[","color":"white"},{"text":"■■","color":"white"},{"text":"■■","color":"green"},{"text":"■■■■■","color":"dark_gray"},{"text":"]","color":"white"}]
execute if score @s speed matches 50..59 run title @p[tag=riding_player] actionbar [{"text":"[","color":"white"},{"text":"■■","color":"white"},{"text":"■■■","color":"green"},{"text":"■■■■","color":"dark_gray"},{"text":"]","color":"white"}]
execute if score @s speed matches 60..69 run title @p[tag=riding_player] actionbar [{"text":"[","color":"white"},{"text":"■■","color":"white"},{"text":"■■■","color":"green"},{"text":"■","color":"yellow"},{"text":"■■■","color":"dark_gray"},{"text":"]","color":"white"}]
execute if score @s speed matches 70..79 run title @p[tag=riding_player] actionbar [{"text":"[","color":"white"},{"text":"■■","color":"white"},{"text":"■■■","color":"green"},{"text":"■","color":"yellow"},{"text":"■","color":"gold"},{"text":"■■","color":"dark_gray"},{"text":"]","color":"white"}]
execute if score @s speed matches 80..89 run title @p[tag=riding_player] actionbar [{"text":"[","color":"white"},{"text":"■■","color":"white"},{"text":"■■■","color":"green"},{"text":"■","color":"yellow"},{"text":"■","color":"gold"},{"text":"■","color":"red"},{"text":"■","color":"dark_gray"},{"text":"]","color":"white"}]
execute if score @s speed matches 90..99 run title @p[tag=riding_player] actionbar [{"text":"[","color":"white"},{"text":"■■","color":"white"},{"text":"■■■","color":"green"},{"text":"■","color":"yellow"},{"text":"■","color":"gold"},{"text":"■","color":"red"},{"text":"■","color":"dark_red"},{"text":"]","color":"white"}]

execute if score @s speed matches 64.. unless entity @p[tag=riding_player,tag=!wasd.s,tag=!wasd.a,tag=!wasd.d] run particle minecraft:smoke ^-0.5 ^ ^-1 0.1 0 0.1 0.01 4
execute if score @s speed matches 64.. unless entity @p[tag=riding_player,tag=!wasd.s,tag=!wasd.a,tag=!wasd.d] run particle minecraft:smoke ^0.5 ^ ^-1 0.1 0 0.1 0.01 4
