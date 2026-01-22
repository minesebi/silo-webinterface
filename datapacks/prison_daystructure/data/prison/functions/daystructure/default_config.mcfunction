# Default configuration (runs once)
scoreboard players set #config_init prison.cfg 1

# Event times in ticks on a 0-24000 scale where 0 = 00:00 (midnight)
scoreboard players set #t_wake_up prison.cfg 6000
scoreboard players set #t_work_start prison.cfg 8000
scoreboard players set #t_lunch prison.cfg 12000
scoreboard players set #t_dinner prison.cfg 18000
scoreboard players set #t_cell_warning prison.cfg 21500
scoreboard players set #t_lights_out prison.cfg 22000

# Bossbar title configuration (text component)
execute unless data storage prison:config daystructure run data modify storage prison:config daystructure set value {}
execute unless data storage prison:config daystructure.title run data modify storage prison:config daystructure.title set value {"text":"00  •  06 Aufstehen  •  08 Arbeitsbeginn  •  12 Mittag  •  18 Abendessen  •  21:30 Zellenpflicht  •  22 Nachtruhe  •  24","color":"white"}
execute unless data storage prison:config daystructure.style run data modify storage prison:config daystructure.style set value "progress"
execute unless data storage prison:config daystructure.color run data modify storage prison:config daystructure.color set value "blue"
