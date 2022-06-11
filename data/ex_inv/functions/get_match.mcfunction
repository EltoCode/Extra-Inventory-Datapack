##searches through array for a match
#
##Called by swap_inv

#clears required 
data remove storage exinv:req Player

#Sets player UUID scores to their UUID (move this to tick?)
execute as @s store result score @s exinv_uuid0 run data get entity @s UUID[0]
execute as @s store result score @s exinv_uuid1 run data get entity @s UUID[1]
execute as @s store result score @s exinv_uuid2 run data get entity @s UUID[2]
execute as @s store result score @s exinv_uuid3 run data get entity @s UUID[3]

#Gets UUID of first entry in Players list

execute store result score #ex_inv_comparator exinv_uuid0 run data get storage exinv:inv_list invStore.Players[0].UUID[0]
execute store result score #ex_inv_comparator exinv_uuid1 run data get storage exinv:inv_list invStore.Players[0].UUID[1]
execute store result score #ex_inv_comparator exinv_uuid2 run data get storage exinv:inv_list invStore.Players[0].UUID[2]
execute store result score #ex_inv_comparator exinv_uuid3 run data get storage exinv:inv_list invStore.Players[0].UUID[3]

#Checks if UUID of array entry matches player
#if it doesn't it moves entry to auxilary storage
execute unless score #ex_inv_comparator exinv_uuid0 = @s exinv_uuid0 unless score #ex_inv_comparator exinv_uuid1 = @s exinv_uuid1 unless score #ex_inv_comparator exinv_uuid2 = @s exinv_uuid2 unless score #ex_inv_comparator exinv_uuid3 = @s exinv_uuid3 run data modify storage exinv:aux Players append from storage exinv:inv_list invStore.Players[0]

#if it does, it moves entry to required storage
execute if score #ex_inv_comparator exinv_uuid0 = @s exinv_uuid0 if score #ex_inv_comparator exinv_uuid1 = @s exinv_uuid1 if score #ex_inv_comparator exinv_uuid2 = @s exinv_uuid2 if score #ex_inv_comparator exinv_uuid3 = @s exinv_uuid3 run data modify storage exinv:req Player set from storage exinv:inv_list invStore.Players[0]

#set a score and use that for testing

#Removes the top entry of invStore.Players array
data remove storage exinv:inv_list invStore.Players[0]

#Checks if req player inv is found, if not recurses this function
execute as @s unless data storage exinv:req Player run function ex_inv:get_match 

#If player inv is found, finishes the funtion
execute as @s if data storage exinv:req Player run function ex_inv:finish_match 