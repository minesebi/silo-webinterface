# Prison daystructure system load
scoreboard objectives add prison.daytime dummy
scoreboard objectives add prison.daylast dummy
scoreboard objectives add prison.tick dummy
scoreboard objectives add prison.cfg dummy

# Set default config only once per world
execute unless score #config_init prison.cfg matches 1 run function prison:daystructure/default_config

# Bossbar setup
bossbar add prison:daytime "Daystructure"
bossbar set prison:daytime max 24000
bossbar set prison:daytime players @a

# Apply title + style from config
function prison:daystructure/apply_config

# Initial update
function prison:daystructure/update
