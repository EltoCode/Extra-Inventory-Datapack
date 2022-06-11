##finshes searching by appending the aux array to the main array

#hmm
execute as @e[type=minecraft:chest_minecart,limit=1,sort=nearest] at @s run data modify storage exinv:construct Player.UUID set from entity @s UUID
execute as @e[type=minecraft:chest_minecart,limit=1,sort=nearest] at @s run data modify storage exinv:construct Player.Inventory set from entity @s Items
data modify storage exinv:inv_list invStore.Players append from storage exinv:construct Player
data remove storage exinv:construct Player
