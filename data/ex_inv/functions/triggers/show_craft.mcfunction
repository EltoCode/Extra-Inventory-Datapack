##Trigger to show crafting recipe
#
##Called by triggers

tellraw @s ["",{"text":"\u25a0","color":"light_purple"},{"text":" \u25a0","color":"aqua"},{"text":" \u25a0","color":"green"},{"text":"\n"},{"text":"\u25a0","color":"blue"},{"text":" \u25a0","color":"black"},{"text":" \u25a0","color":"red"},{"text":"\n"},{"text":"\u25a0","color":"gold"},{"text":" \u25a0","color":"yellow"},{"text":" \u25a0"}]

scoreboard players set @s exinv_crafting_recipe 0
scoreboard players enable @s exinv_crafting_recipe

