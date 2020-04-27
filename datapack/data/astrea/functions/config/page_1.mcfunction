# 6 lignes maximum / 54 caractères par ligne

execute if data storage astrea:soul_enchanting enabled run tellraw @s {"text":"Soul Enchanting ", "color": "#ffef08", "bold": "true", "extra": [{"text": "✘", "bold": "false", "color": "#ff3b3b", "clickEvent": {"action": "run_command", "value": "/function astrea:soul_enchanting/uninstall"}}]}
execute unless data storage astrea:soul_enchanting enabled run tellraw @s {"text":"Soul Enchanting ", "color": "#ffef08", "bold": "true", "extra": [{"text": "✔", "bold": "false", "color": "#3bff41", "clickEvent": {"action": "run_command", "value": "/function astrea:soul_enchanting/install"}}]}

execute if data storage astrea:anti_mob_griefing enabled run tellraw @s {"text":"Anti Mob Griefing ", "color": "#ffef08", "bold": "true", "extra": [{"text": "✘", "bold": "false", "color": "#ff3b3b", "clickEvent": {"action": "run_command", "value": "/function astrea:anti_mob_griefing/uninstall"}}]}
execute unless data storage astrea:anti_mob_griefing enabled run tellraw @s {"text":"Anti Mob Griefing ", "color": "#ffef08", "bold": "true", "extra": [{"text": "✔", "bold": "false", "color": "#3bff41", "clickEvent": {"action": "run_command", "value": "/function astrea:anti_mob_griefing/install"}}]}

execute if data storage astrea:invisible_item_frame enabled run tellraw @s {"text":"Invisible Item Frame ", "color": "#ffef08", "bold": "true", "extra": [{"text": "✘", "bold": "false", "color": "#ff3b3b", "clickEvent": {"action": "run_command", "value": "/function astrea:invisible_item_frame/uninstall"}}]}
execute unless data storage astrea:invisible_item_frame enabled run tellraw @s {"text":"Invisible Item Frame ", "color": "#ffef08", "bold": "true", "extra": [{"text": "✔", "bold": "false", "color": "#3bff41", "clickEvent": {"action": "run_command", "value": "/function astrea:invisible_item_frame/install"}}]}

execute if data storage astrea:suicide_trigger enabled run tellraw @s {"text":"Suicide Trigger ", "color": "#ffef08", "bold": "true", "extra": [{"text": "✘", "bold": "false", "color": "#ff3b3b", "clickEvent": {"action": "run_command", "value": "/function astrea:suicide_trigger/uninstall"}}]}
execute unless data storage astrea:suicide_trigger enabled run tellraw @s {"text":"Suicide Trigger ", "color": "#ffef08", "bold": "true", "extra": [{"text": "✔", "bold": "false", "color": "#3bff41", "clickEvent": {"action": "run_command", "value": "/function astrea:suicide_trigger/install"}}]}

execute if data storage astrea:xp_clumping enabled run tellraw @s {"text":"XP Clumping ", "color": "#ffef08", "bold": "true", "extra": [{"text": "✘", "bold": "false", "color": "#ff3b3b", "clickEvent": {"action": "run_command", "value": "/function astrea:xp_clumping/uninstall"}}]}
execute unless data storage astrea:xp_clumping enabled run tellraw @s {"text":"XP Clumping ", "color": "#ffef08", "bold": "true", "extra": [{"text": "✔", "bold": "false", "color": "#3bff41", "clickEvent": {"action": "run_command", "value": "/function astrea:xp_clumping/install"}}]}


execute unless data storage astrea:suicide_trigger enabled run tellraw @s {"text":"<-", "color": "#b3b3b3", "bold": "true", "extra": [{"text": " 1 ", "bold": "false", "color": "#ffffff"}, {"text": "->", "bold": "true", "color": "#ffef08", "clickEvent": {"action": "run_command", "value": "/function astrea:config/page_2"}}]}

scoreboard players reset @s astreaCfg