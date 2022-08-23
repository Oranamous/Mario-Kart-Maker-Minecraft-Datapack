scoreboard objectives add storage dummy "- Storage -"
scoreboard objectives add speed dummy "- Speed -"
scoreboard objectives add speedDelta dummy "- Speed Delta -"
scoreboard objectives add vehicle_id dummy "- Vehicle ID -"
execute unless score $Total vehicle_id matches 0.. unless score $Total vehicle_id matches ..0 run scoreboard players set $Total vehicle_id 0

scoreboard players set friction storage 99
scoreboard players set friction1 storage 100

kill @e[tag=worker]
summon armor_stand 0 0 0 {Marker:1b,Invisible:1b,Silent:1b,Tags:["worker"]}
forceload add -1 -1 1 1

function mk_maker:controls/init

tellraw @a "Loaded!"
