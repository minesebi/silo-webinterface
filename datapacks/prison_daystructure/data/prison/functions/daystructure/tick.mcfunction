# Tick handler (20 ticks = 1 second)
scoreboard players add #tick prison.tick 1
execute if score #tick prison.tick matches 20.. run function prison:daystructure/update
