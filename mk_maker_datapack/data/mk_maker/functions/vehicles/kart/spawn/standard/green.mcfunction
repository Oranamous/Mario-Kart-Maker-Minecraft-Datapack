summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,Small:1b,Invulnerable:1b,NoGravity:1b,Tags:["vehicle","kart","vehicle_init","standard"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:26}}],CustomName:'{"text":"Green Standard","italic":false}'}
summon pig ~ ~-0.6 ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Saddle:1b,Tags:["seat","kart_part","vehicle_init"]}
scoreboard players operation @e[tag=vehicle_init] vehicle_id = $Total vehicle_id
tag @e[tag=vehicle_init] remove vehicle_init
scoreboard players add $Total vehicle_id 1
