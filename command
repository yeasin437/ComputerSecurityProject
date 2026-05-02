alert icmp any any -> $HOME_NET any (msg:"Ping Detected"; sid:1001; rev:1;)

alert tcp any any -> $HOME_NET 80 (msg:"HTTP Access"; sid:1002; rev:1;)

alert tcp any any -> $HOME_NET any (flags:S; msg:"Port Scan"; sid:1003; rev:1;)

sudo snort -A console -q -c /etc/snort/snort.conf -i enp0s3
