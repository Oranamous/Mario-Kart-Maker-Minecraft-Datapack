execute if score @s mk_maker.player.item_box matches 1 run playsound minecraft:mk_maker.entity.item_box.random player @s ~ ~ ~ 0.5 1 0.5
execute if score @s mk_maker.player.item_box matches 1 run item replace entity @s weapon.offhand with minecraft:knowledge_book{Tags:["mk_maker","other","random_item"],CustomModelData:1,display:{Name:'[{"text":""}]'},Unbreakable:1,HideFlags:127} 1
scoreboard players add @s mk_maker.player.item_box 1

execute if score @s mk_maker.player.item_box matches 50 run function mk_maker:player/random_item