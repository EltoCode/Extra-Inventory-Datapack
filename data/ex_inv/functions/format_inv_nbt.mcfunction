##formats the inventory nbt of the construct object
#
##Called by write_inv


#Removes the hotbar, armour, and offhand
data remove storage exinv:construct Player.Inventory[{Slot:0b}]
data remove storage exinv:construct Player.Inventory[{Slot:1b}]
data remove storage exinv:construct Player.Inventory[{Slot:2b}]
data remove storage exinv:construct Player.Inventory[{Slot:3b}]
data remove storage exinv:construct Player.Inventory[{Slot:4b}]
data remove storage exinv:construct Player.Inventory[{Slot:5b}]
data remove storage exinv:construct Player.Inventory[{Slot:6b}]
data remove storage exinv:construct Player.Inventory[{Slot:7b}]
data remove storage exinv:construct Player.Inventory[{Slot:8b}]
data remove storage exinv:construct Player.Inventory[{Slot:100b}]
data remove storage exinv:construct Player.Inventory[{Slot:101b}]
data remove storage exinv:construct Player.Inventory[{Slot:102b}]
data remove storage exinv:construct Player.Inventory[{Slot:103b}]
data remove storage exinv:construct Player.Inventory[{Slot:-106b}]

#Corrects the slots of the remaining inventory
#But only after checking if it exists to prevent jank
execute if data storage exinv:construct Player.Inventory[{Slot:9b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:9b}].Slot set value 0b
execute if data storage exinv:construct Player.Inventory[{Slot:10b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:10b}].Slot set value 1b
execute if data storage exinv:construct Player.Inventory[{Slot:11b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:11b}].Slot set value 2b
execute if data storage exinv:construct Player.Inventory[{Slot:12b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:12b}].Slot set value 3b
execute if data storage exinv:construct Player.Inventory[{Slot:13b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:13b}].Slot set value 4b
execute if data storage exinv:construct Player.Inventory[{Slot:14b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:14b}].Slot set value 5b
execute if data storage exinv:construct Player.Inventory[{Slot:15b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:15b}].Slot set value 6b
execute if data storage exinv:construct Player.Inventory[{Slot:16b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:16b}].Slot set value 7b
execute if data storage exinv:construct Player.Inventory[{Slot:17b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:17b}].Slot set value 8b
execute if data storage exinv:construct Player.Inventory[{Slot:18b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:18b}].Slot set value 9b
execute if data storage exinv:construct Player.Inventory[{Slot:19b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:19b}].Slot set value 10b
execute if data storage exinv:construct Player.Inventory[{Slot:20b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:20b}].Slot set value 11b
execute if data storage exinv:construct Player.Inventory[{Slot:21b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:21b}].Slot set value 12b
execute if data storage exinv:construct Player.Inventory[{Slot:22b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:22b}].Slot set value 13b
execute if data storage exinv:construct Player.Inventory[{Slot:23b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:23b}].Slot set value 14b
execute if data storage exinv:construct Player.Inventory[{Slot:24b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:24b}].Slot set value 15b
execute if data storage exinv:construct Player.Inventory[{Slot:25b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:25b}].Slot set value 16b
execute if data storage exinv:construct Player.Inventory[{Slot:26b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:26b}].Slot set value 17b
execute if data storage exinv:construct Player.Inventory[{Slot:27b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:27b}].Slot set value 18b
execute if data storage exinv:construct Player.Inventory[{Slot:28b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:28b}].Slot set value 19b
execute if data storage exinv:construct Player.Inventory[{Slot:29b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:29b}].Slot set value 20b
execute if data storage exinv:construct Player.Inventory[{Slot:30b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:30b}].Slot set value 21b
execute if data storage exinv:construct Player.Inventory[{Slot:31b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:31b}].Slot set value 22b
execute if data storage exinv:construct Player.Inventory[{Slot:32b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:32b}].Slot set value 23b
execute if data storage exinv:construct Player.Inventory[{Slot:33b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:33b}].Slot set value 24b
execute if data storage exinv:construct Player.Inventory[{Slot:34b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:34b}].Slot set value 25b
execute if data storage exinv:construct Player.Inventory[{Slot:35b}].Slot run data modify storage exinv:construct Player.Inventory[{Slot:35b}].Slot set value 26b


