playsound minecraft:mk_maker.entity.item_box.get player @a ~ ~ ~ 0.3 1 0
scoreboard players set @a[limit=1,sort=nearest] mk_maker.player.item_box 1
kill @s