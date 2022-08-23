scoreboard players remove movement storage 1
execute rotated as @a[tag=riding_player] rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^8000 facing entity @s feet facing ^ ^ ^-1 positioned as @s positioned ^ ^ ^0.01 if block ^ ^1 ^0.39 #mk_maker:air run tp @s ~ ~ ~ ~ ~
execute rotated as @a[tag=riding_player,tag=wasd.a] rotated ~-90 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^5000 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute rotated as @a[tag=riding_player,tag=wasd.d] rotated ~90 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^5000 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute unless block ^ ^1.1 ^0.4 #mk_maker:air run scoreboard players set @s speed 0

execute if score movement storage matches 1.. run function mk_maker:vehicles/kart/move/forward
