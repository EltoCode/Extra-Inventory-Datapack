##Controls everything to do with ex_inv triggers
#
##Called by minecraft:load

#runs this less often for optimisation sake
schedule function ex_inv:triggers 2s

#checks if player wants crafting
execute as @a if score @s exinv_crafting_recipe matches 1.. run function ex_inv:triggers/show_craft
#checks if player wants help
execute as @a if score @s exinv_help matches 1.. run function ex_inv:triggers/show_help
#checks if player wants credits
execute as @a if score @s exinv_credits matches 1.. run function ex_inv:triggers/show_credits