# Trigger configured events when time matches (0 = 00:00)
execute if score #time prison.daytime = #t_wake_up prison.cfg run function #prison:daystructure/events/wake_up
execute if score #time prison.daytime = #t_work_start prison.cfg run function #prison:daystructure/events/work_start
execute if score #time prison.daytime = #t_lunch prison.cfg run function #prison:daystructure/events/lunch
execute if score #time prison.daytime = #t_dinner prison.cfg run function #prison:daystructure/events/dinner
execute if score #time prison.daytime = #t_cell_warning prison.cfg run function #prison:daystructure/events/cell_warning
execute if score #time prison.daytime = #t_lights_out prison.cfg run function #prison:daystructure/events/lights_out
