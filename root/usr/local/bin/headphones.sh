pacmd list-sinks|grep -B1 Senn |grep index|cut -d: -f2|xargs pacmd set-default-sink
