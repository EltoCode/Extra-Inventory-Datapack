##Queries if the inventory should drop by checking spec mode and keepInv
#
##Called by tick

#Gets whether keep inventory is true
execute store result score #exinv_is_ki exinv_misc run gamerule keepInventory

#if player is in spec mode and if ki is false, runs inv_drop_death
execute as @s at @s if entity @s[gamemode=!spectator] if score #exinv_is_ki exinv_misc matches 0 run function ex_inv:inv_drop_death

#resets score
execute as @s run scoreboard players set @s exinv_death 0