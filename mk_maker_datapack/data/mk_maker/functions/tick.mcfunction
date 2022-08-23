function mk_maker:vehicles/tick
function mk_maker:blocks/tick

execute as @a run function mk_maker:gui/tick

execute as @a run function mk_maker:controls/tick

effect give @e[tag=seat] invisibility 1 0 true
