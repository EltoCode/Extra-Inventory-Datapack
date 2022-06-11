##Swaps inv with the one in storage

#Writes the current inventory to the end of the list
execute as @s at @s run function ex_inv:write_inv

#finds the first player instance from the top of the list
execute as @s at @s run function ex_inv:get_match

#loads the inventory into the player
execute as @s at @s run function ex_inv:read_inv

#Does some razzle dazzle
execute as @s at @s run playsound item.armor.equip_diamond player @s ~ ~ ~ 0.5
execute as @s at @s run playsound item.bundle.drop_contents player @s ~ ~ ~ 0.5
execute as @s at @s run playsound block.small_amethyst_bud.break player @s ~ ~ ~
execute as @s at @s run particle electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.5 15 normal