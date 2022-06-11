##Uses the dropped inventory crystal
#
##Called by tick

#reset score
scoreboard players set @s exinv_drop_crystal 0

execute if score #exinv_debug exinv_misc matches 1 run say excuting use_crystal as <

#kills the dropped crystal
execute as @s at @s run kill @e[type=item,limit=1,sort=nearest,distance=..2,nbt={Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Inventory Crystal","color":"yellow"}'},CustomModelData:101010}}}]

#Executes the swap command for the players
execute as @s at @s run function ex_inv:swap_inv