##Writes the player Inventory to storage
#
##Called by swap_inv

#Constructs an object to add to list
execute as @s at @s run data modify storage exinv:construct Player.UUID set from entity @s UUID
execute as @s at @s run data modify storage exinv:construct Player.Inventory set from entity @s Inventory

#Calls Function to format the inventory nbt of the constructed object
execute as @s at @s run function ex_inv:format_inv_nbt

#Writes the constructed object to exinv:invStore.Players
data modify storage exinv:inv_list invStore.Players append from storage exinv:construct Player

#Clears the constructor
data remove storage exinv:construct Player