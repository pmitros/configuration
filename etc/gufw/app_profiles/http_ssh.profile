[fwBasic]
status = enabled
incoming = reject
outgoing = allow

[Rule0]
ufw_rule = 80/tcp ALLOW IN Anywhere
description = http
command = ufw allow in 80/tcp
policy = allow
direction = in
protocol = tcp
from_ip = 
from_port = 
to_ip = 
to_port = 80
iface = 
logging = 

[Rule1]
ufw_rule = 22/tcp ALLOW IN Anywhere
description = ssh
command = ufw allow in 22/tcp
policy = allow
direction = in
protocol = tcp
from_ip = 
from_port = 
to_ip = 
to_port = 22
iface = 
logging = 

[Rule2]
ufw_rule = 80/tcp (v6) ALLOW IN Anywhere (v6)
description = http
command = ufw allow in 80/tcp
policy = allow
direction = in
protocol = tcp
from_ip = 
from_port = 
to_ip = 
to_port = 80
iface = 
logging = 

[Rule3]
ufw_rule = 22/tcp (v6) ALLOW IN Anywhere (v6)
description = ssh
command = ufw allow in 22/tcp
policy = allow
direction = in
protocol = tcp
from_ip = 
from_port = 
to_ip = 
to_port = 22
iface = 
logging = 

