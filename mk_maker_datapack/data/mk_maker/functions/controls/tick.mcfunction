data modify storage cw_wasd Motion set from entity @s Motion
execute store result score .x wasd run data get storage cw_wasd Motion[0] 1000.0
execute store result score .z wasd run data get storage cw_wasd Motion[2] 1000.0

scoreboard players set .w wasd 0
scoreboard players set .a wasd 0
scoreboard players set .s wasd 0
scoreboard players set .d wasd 0
scoreboard players set .dir wasd 0
execute if score .z wasd matches 0 if score .x wasd matches 0 run scoreboard players set .dir wasd -999
execute unless score .dir wasd matches -999 run function mk_maker:controls/calc_range
execute if score in wasd matches 1 run function mk_maker:controls/apply_tags

tag @s remove wasd.w
tag @s remove wasd.a
tag @s remove wasd.s
tag @s remove wasd.d
execute if score .w wasd matches 1 run tag @s add wasd.w
execute if score .a wasd matches 1 run tag @s add wasd.a
execute if score .s wasd matches 1 run tag @s add wasd.s
execute if score .d wasd matches 1 run tag @s add wasd.d
