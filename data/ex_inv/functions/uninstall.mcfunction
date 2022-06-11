## Removes all scores required by the datapack
#
##Called by Player

#Sends some messages to the player regarding the 2nd inventory pages of players
tellraw @s ["",{"text":"Thank you for using the Extra Inventory datapack. We're sorry to see you go. Everything from the datapack has been removed from your world.\nHowever. We've kept the extra inventory off all players stored away safely, incase you ever decide to use this datapack again.\nIf you wish to delete the stored data. Click ","color":"red"},{"text":"Here","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function ex_inv:zprivate/uninstall_and_delete"}},{"text":".","underlined":true,"color":"red"}]

schedule clear ex_inv:tick
schedule clear ex_inv:triggers

scoreboard objectives remove exinv_drop_crystal 

scoreboard objectives remove exinv_page 

scoreboard objectives remove exinv_death 

scoreboard objectives remove exinv_misc 

#scoreboard objectives remove exinv_id 

scoreboard objectives remove exinv_uuid0
scoreboard objectives remove exinv_uuid1
scoreboard objectives remove exinv_uuid2
scoreboard objectives remove exinv_uuid3

#scoreboard objectives remove exinv_uuid0_comp
#scoreboard objectives remove exinv_uuid1_comp
#scoreboard objectives remove exinv_uuid2_comp
#scoreboard objectives remove exinv_uuid3_comp


scoreboard objectives remove exinv_crafting_recipe 
scoreboard objectives remove exinv_help
scoreboard objectives remove exinv_credits