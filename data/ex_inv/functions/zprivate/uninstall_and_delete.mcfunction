## Removes all scores required by the datapack
#
##Called by Player


#Adds a a temporary scoreboard act as confirmation
scoreboard objectives add exinv_del_confirm dummy

#Clears chat for safety
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

#Gives this message the first time a player runs this commands
execute unless score @s exinv_del_confirm matches 1 run tellraw @s ["",{"text":"[!!!","bold":true,"color":"dark_red"},{"text":"WARNING","bold":true,"color":"red"},{"text":"!!!] ","bold":true,"color":"dark_red"},{"text":"YOU ARE ABOUT TO DELETE THE DATA LIST OF ALL PLAYERS.\n\nTHIS MEANS ","color":"red"},{"text":"ANY ITEMS STORED BY PLAYERS IN THE EXTRA INVENTORY WILL BE LOST FOREVER.","italic":true,"underlined":true,"color":"red"},{"text":" ","color":"red"}]
execute unless score @s exinv_del_confirm matches 1 run tellraw @s ["",{"text":"ITEMS LOST THIS WAY ","color":"red"},{"text":"CAN NEVER BE RECOVERED.","italic":true,"underlined":true,"color":"red"},{"text":" \n\n"},{"text":"ONLY PROCEED IF YOU KNOW WHAT YOU ARE DOING.","color":"red"}]
execute unless score @s exinv_del_confirm matches 1 run tellraw @a ["",{"text":"\n"},{"text":"IF YOU STILL WISH TO PROCEED. CLICK ","color":"red"},{"text":"HERE","bold":true,"italic":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"suggest_command","value":"/function ex_inv:zprivate/uninstall_and_delete"}},{"text":" AND THEN PRESS ENTER.","color":"red"}]

#executes the following commands only if this is the 2nd time the function is being run within the last 10 seconds by the same player
#deletes the inventory list
execute if score @s exinv_del_confirm matches 1 run data remove storage exinv:inv_list invStore
#removes the scoreboard that checks if players are initialized
execute if score @s exinv_del_confirm matches 1 run scoreboard objectives remove exinv_init
#sends the message showing deletion is done
execute if score @s exinv_del_confirm matches 1 run tellraw @s ["",{"text":"[","bold":true,"color":"dark_red"},{"text":"!!!","bold":true,"obfuscated":true,"color":"dark_red"},{"text":"WARNING","bold":true,"color":"dark_red"},{"text":"!!!","bold":true,"obfuscated":true,"color":"dark_red"},{"text":"] THE DATA LIST HAS BEEN DELETED. DELETED DATA CAN NOT BE RECOVERED","bold":true,"color":"dark_red"}]

#schedules a function to clear the newly added scoreboard
schedule function ex_inv:zprivate/uninstall_delete_abort 10s append

#Sets the player score to 1 to prime deletion
scoreboard players set @s exinv_del_confirm 1
