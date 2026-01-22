# Apply bossbar configuration from storage
bossbar set prison:daytime name {"storage":"prison:config","path":"daystructure.title"}

# Color handling (extend as needed)
execute if data storage prison:config {daystructure:{color:"blue"}} run bossbar set prison:daytime color blue
execute if data storage prison:config {daystructure:{color:"yellow"}} run bossbar set prison:daytime color yellow
execute if data storage prison:config {daystructure:{color:"green"}} run bossbar set prison:daytime color green
execute if data storage prison:config {daystructure:{color:"red"}} run bossbar set prison:daytime color red
execute if data storage prison:config {daystructure:{color:"purple"}} run bossbar set prison:daytime color purple
execute if data storage prison:config {daystructure:{color:"white"}} run bossbar set prison:daytime color white

# Style handling (extend as needed)
execute if data storage prison:config {daystructure:{style:"progress"}} run bossbar set prison:daytime style progress
execute if data storage prison:config {daystructure:{style:"notched_6"}} run bossbar set prison:daytime style notched_6
execute if data storage prison:config {daystructure:{style:"notched_10"}} run bossbar set prison:daytime style notched_10
execute if data storage prison:config {daystructure:{style:"notched_12"}} run bossbar set prison:daytime style notched_12
execute if data storage prison:config {daystructure:{style:"notched_20"}} run bossbar set prison:daytime style notched_20
