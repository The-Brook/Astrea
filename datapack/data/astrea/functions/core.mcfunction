# Execute modules
execute if data storage astrea:anti_mob_griefing enabled run function astrea:anti_mob_griefing/core
execute if data storage astrea:invisible_item_frame enabled run function astrea:invisible_item_frame/core
execute if data storage astrea:soul_enchanting enabled run function astrea:soul_enchanting/core
execute if data storage astrea:suicide_trigger enabled run function astrea:suicide_trigger/core

execute as @a[scores={astreaCfg=1..}] run function astrea:config/page_1


# Enables the trigger
scoreboard players enable @a[tag=astreaAdmin] astreaCfg