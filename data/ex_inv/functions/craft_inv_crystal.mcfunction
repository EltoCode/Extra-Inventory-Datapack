##Workaround for nbt crafting
#
##Called by advancement

#Workaround
recipe take @s ex_inv:inv_crystal
advancement revoke @s only ex_inv:craft_inv_crystal
clear @s minecraft:knowledge_book 1
give @p paper{display:{Name:'{"text":"Inventory Crystal","color":"yellow"}'},CustomModelData:101010,Enchantments:[{}]} 64