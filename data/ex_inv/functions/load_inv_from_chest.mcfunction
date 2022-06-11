##Loads the inventory from the chest minecart to the player
#
##Called by read_inv

#sets items from minecart to player inventory, slowly, painfuly, one at a time, WHY MOJANG
#I hope mc using caching when searching lol

item replace entity @s container.9 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.0
item replace entity @s container.10 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.1
item replace entity @s container.11 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.2
item replace entity @s container.12 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.3
item replace entity @s container.13 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.4
item replace entity @s container.14 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.5
item replace entity @s container.15 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.6
item replace entity @s container.16 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.7
item replace entity @s container.17 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.8
item replace entity @s container.18 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.9
item replace entity @s container.19 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.10
item replace entity @s container.20 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.11
item replace entity @s container.21 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.12
item replace entity @s container.22 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.13
item replace entity @s container.23 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.14
item replace entity @s container.24 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.15
item replace entity @s container.25 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.16
item replace entity @s container.26 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.17
item replace entity @s container.27 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.18
item replace entity @s container.28 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.19
item replace entity @s container.29 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.20
item replace entity @s container.30 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.21
item replace entity @s container.31 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.22
item replace entity @s container.32 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.23
item replace entity @s container.33 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.24
item replace entity @s container.34 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.25
item replace entity @s container.35 from entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] container.26

execute if score #exinv_debug exinv_misc matches 1 run say Inventory has been swapped.