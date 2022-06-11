##Trigger to show credits
#
##Called by triggers

tellraw @s ["",{"text":"["},{"text":"Extra Inventory","color":"gold"},{"text":"]\n"},{"text":"Made by ","color":"yellow"},{"text":"Elton's Stuff Productions","color":"gold"},{"text":"\n"},{"text":"[Youtube]","bold":true,"color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCGoqSOyv8UVVpP0mIJHQj9g"}},{"text":"\n"},{"text":"[Twitter]","bold":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/EltonsStuff"}}]

scoreboard players set @s exinv_credits 0
scoreboard players enable @s exinv_credits

