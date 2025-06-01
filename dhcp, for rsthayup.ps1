D1: vlanCreation + dhcp + svi:

config t
vlan 12
 name Vlan12.com.ph
 exit
Int vlan 12
 no shut
 ip add 10.0.0.129 255.255.255.128
 ip ospf 1 area 0
ip dhcp excluded-add 10.0.0.129 10.0.0.139
ip dhcp pool Vlan12.com.ph
 network 10.0.0.128 255.255.255.128
 default-router 10.0.0.129
 domain-name Vlan12.com.ph
 @A1:

 Config t
 Int et 1/0
  switchport mode access
  switchport access vlan 12
 

@P1
Config t
 Int et 1/0
 no shutdown
 ip address dhcp
