

ip = IP(dst='10.30.204.1')
icmp = ICMP(type=8, code=0)
ping = ip/icmp
send(ping)
