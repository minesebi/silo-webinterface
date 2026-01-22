# 1-second update cycle
scoreboard players set #tick prison.tick 0

# Ensure bossbar is visible for online players (join/respawn safe)
bossbar set prison:daytime players @a

# Query raw daytime (0 = 06:00) and shift so 0 = 00:00
execute store result score #raw prison.daytime run time query daytime
scoreboard players operation #time prison.daytime = #raw prison.daytime
scoreboard players add #time prison.daytime 6000
execute if score #time prison.daytime matches 24000.. run scoreboard players remove #time prison.daytime 24000

# Update bossbar progress
execute store result bossbar prison:daytime value run scoreboard players get #time prison.daytime

# Event checks (only once per updated time)
execute unless score #time prison.daytime = #last prison.daylast run function prison:daystructure/check_events
scoreboard players operation #last prison.daylast = #time prison.daytime
