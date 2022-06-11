##Creates all scores required by the datapack
#
##Called by minecraft:load


#Scores#
#to check when inv crystal is used
scoreboard objectives add exinv_drop_crystal minecraft.dropped:minecraft.paper
#to check inv page
scoreboard objectives add exinv_page dummy
#to check if dead
scoreboard objectives add exinv_death deathCount
#scoreboard for misc variables to be used with fake players
scoreboard objectives add exinv_misc dummy

#Assigns Ivn ID
#scoreboard objectives add exinv_id dummy
#scoreboard players set #exinv_gid exinv_id 1


#To check if the 2nd inv page is intialised
scoreboard objectives add exinv_init dummy

#UUIDs
scoreboard objectives add exinv_uuid0 dummy
scoreboard objectives add exinv_uuid1 dummy
scoreboard objectives add exinv_uuid2 dummy
scoreboard objectives add exinv_uuid3 dummy

#comapare UUIDs
#scoreboard objectives add exinv_uuid0_comp dummy
#scoreboard objectives add exinv_uuid1_comp dummy
#scoreboard objectives add exinv_uuid2_comp dummy
#scoreboard objectives add exinv_uuid3_comp dummy

#triggers#
scoreboard objectives add exinv_crafting_recipe trigger "Show Crating Recipe of Crystal"
scoreboard objectives add exinv_help trigger "Show How to Use Extra Inventory"
scoreboard objectives add exinv_credits trigger "Show Credits of Extra Inventory"