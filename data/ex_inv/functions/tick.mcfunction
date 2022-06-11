##Controls everything to do with ex_inv
#
##Called by minecraft:load

schedule function ex_inv:tick 1t

#initialises the 2nd page of a players inventory if not already intitialized
execute as @a unless score @s exinv_init = @s exinv_init store result score @s exinv_init run function ex_inv:init_player

#Checks if a player dropped paper and if the dropped paper is the inventory crystal runs use_crystal
#maybe add an mutex for added safety?
execute as @a at @s if score @s exinv_drop_crystal matches 1 if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Inventory Crystal","color":"yellow"}'},CustomModelData:101010}}}] run function ex_inv:use_crystal

#Checks if player died, runs function check if inventory should drop
execute as @a at @s if score @s exinv_death matches 1.. run function ex_inv:inv_drop_query

#Checks if player droped more than 1 inventory crystal, resets score
execute as @a if score @s exinv_drop_crystal matches 2.. run scoreboard players set @s exinv_drop_crystal 0

