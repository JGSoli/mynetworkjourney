﻿config t
vlan 25
 name foundever.com
 exit
Int vlan 25
 no shut
 ip add 10.0.16.1 255.255.240.0
 ip ospf 1 area 0
ip dhcp excluded-add 10.0.16.1 10.0.16.100
ip dhcp pool foundever.com
 network 10.0.16.0 255.255.240.0
 default-router 10.0.16.1
 domain-name foundever.com
 dns-server 10.12.1.10
 option 150 ip 10.12.100.8
 Int Fa 0/5
  swi Voice vlan 25
  do sh ip dhcp binding
