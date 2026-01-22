# Prison Daystructure Datapack

Dieses Modul stellt eine globale Bossbar bereit, die die Tageszeit als 0–24h-Timeline anzeigt.
Die Füllung basiert auf der echten Minecraft-Tageszeit, wird aber so verschoben, dass **0 = 00:00 (Mitternacht)** ist.

## Architektur
- **Namespace:** `prison`
- **Load/ Tick:** `data/minecraft/tags/functions/load.json` und `tick.json`
- **Update-Takt:** 1× pro Sekunde (20 Ticks)
- **Event-Hooks:** `#prison:daystructure/events/*` (Tag-Call für erweiterbare Events)

## Konfiguration
### Bossbar-Titel / Marker
Die visuelle Timeline wird über den Bossbar-Namen abgebildet:
- Storage: `prison:config.daystructure.title`
- Format: Text-Component

Beispiel (Standard):
```
{"text":"00  •  06 Aufstehen  •  08 Arbeitsbeginn  •  12 Mittag  •  18 Abendessen  •  21:30 Zellenpflicht  •  22 Nachtruhe  •  24","color":"white"}
```

### Farben / Style
Optional vorbereitet via Storage:
- `prison:config.daystructure.color` (`blue`, `yellow`, `green`, `red`, `purple`, `white`)
- `prison:config.daystructure.style` (`progress`, `notched_6`, `notched_10`, `notched_12`, `notched_20`)

### Event-Zeiten
Zeitpunkte sind **Scoreboard-Konstanten** im Objective `prison.cfg`.
Skala: 0–24000 (0 = 00:00, 6000 = 06:00, 12000 = 12:00, 18000 = 18:00, 22000 = 22:00).

Standardwerte:
- `#t_wake_up` = 6000
- `#t_work_start` = 8000
- `#t_lunch` = 12000
- `#t_dinner` = 18000
- `#t_cell_warning` = 21500
- `#t_lights_out` = 22000

Anpassung per Command, z.B.:
```
/scoreboard players set #t_work_start prison.cfg 9000
```

## Event-Hooks
Zu jedem Zeitpunkt wird ein Function-Tag ausgeführt:
- `#prison:daystructure/events/wake_up`
- `#prison:daystructure/events/work_start`
- `#prison:daystructure/events/lunch`
- `#prison:daystructure/events/dinner`
- `#prison:daystructure/events/cell_warning`
- `#prison:daystructure/events/lights_out`

Die Default-Implementierungen liegen unter:
`data/prison/functions/daystructure/events/*.mcfunction`

Dort kannst du z.B. Overlay-Komponenten, Sounds oder Titles einhängen.
