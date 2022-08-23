execute store result score @s mk_maker.player.random_item run loot spawn ~ ~2 ~ loot mk_maker:random_item
scoreboard players set @s mk_maker.player.item_box 0

execute if score @s mk_maker.player.random_item matches 1 run function mk_maker:give/item/banana_peel
execute if score @s mk_maker.player.random_item matches 2 run function mk_maker:give/item/green_shell
execute if score @s mk_maker.player.random_item matches 3 run function mk_maker:give/item/red_shell
execute if score @s mk_maker.player.random_item matches 4 run function mk_maker:give/item/super_mushroom
execute if score @s mk_maker.player.random_item matches 5 run function mk_maker:give/item/golden_mushroom
execute if score @s mk_maker.player.random_item matches 6 run function mk_maker:give/item/bob_omb
execute if score @s mk_maker.player.random_item matches 7 run function mk_maker:give/item/blooper