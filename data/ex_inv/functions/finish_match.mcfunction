##finshes searching by appending the aux array to the main array
#
##Called by get_match

#appends aux array to invStore.Player
data modify storage exinv:inv_list invStore.Players append from storage exinv:aux Players[]

#clears aux array
data remove storage exinv:aux Players


#debug_log
execute if score #exinv_debug exinv_misc matches 1 run say might recurse too much, but should not happen. check code comments
#If the player data is not present in the inventory list, the get_match function will run till command limit. TODO maybe add a limit to how long it can run 
execute if score #exinv_debug exinv_misc matches 1 run say Should only print once. But may print more so. check code comments
#This should output only once. But a bug makes it appear more so. Can be rectified by adding `store success score` to the execute command that runs this function. and then checking if that score is 1 before recursing.

