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

execute if score @s speed matches ..-1 run title @p[tag=riding_player] actionbar {"text":"\uE009\uE000\uE009"}
execute if score @s speed matches 0 run title @p[tag=riding_player] actionbar {"text":"\uE000"}
execute if score @s speed matches 1..14 run title @p[tag=riding_player] actionbar {"text":"\uE001"}
execute if score @s speed matches 15..28 run title @p[tag=riding_player] actionbar {"text":"\uE002"}
execute if score @s speed matches 29..42 run title @p[tag=riding_player] actionbar {"text":"\uE003"}
execute if score @s speed matches 43..56 run title @p[tag=riding_player] actionbar {"text":"\uE004"}
execute if score @s speed matches 57..70 run title @p[tag=riding_player] actionbar {"text":"\uE005"}
execute if score @s speed matches 71..84 run title @p[tag=riding_player] actionbar {"text":"\uE006"}
execute if score @s speed matches 85..99 run title @p[tag=riding_player] actionbar {"text":"\uE007"}

execute if score @s speed matches 64.. unless entity @p[tag=riding_player,tag=!wasd.s,tag=!wasd.a,tag=!wasd.d] run particle minecraft:smoke ^-0.5 ^ ^-1 0.1 0 0.1 0.01 4
execute if score @s speed matches 64.. unless entity @p[tag=riding_player,tag=!wasd.s,tag=!wasd.a,tag=!wasd.d] run particle minecraft:smoke ^0.5 ^ ^-1 0.1 0 0.1 0.01 4
