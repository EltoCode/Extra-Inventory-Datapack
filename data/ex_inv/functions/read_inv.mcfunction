##Reads the player Inventory from exinv:req via chest minecart to a player
#
##Called by swap_inv

#summons a chest_minecart loader
execute as @s at @s run summon chest_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["exinv_load"]}

#loads from exinv:req into chest_minecart
execute as @s at @s run data modify entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] Items set from storage exinv:req Player.Inventory

#Calls function to load chest_minecart into player
execute as @s at @s run function ex_inv:load_inv_from_chest 

#kills the chest minecart
tp @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] ~ -200 ~


#clears exinv:req
data remove storage exinv:req Player


