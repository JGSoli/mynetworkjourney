config t
ip routing
ip dhcp pool CAMERA6
host 10.12.50.6 255.255.255.0
client-identifier 001a.0704.7f5b
ip dhcp pool CAMERA8
host 10.12.50.8 255.255.255.0
client-identifier 001a.0709.c258
end
show ip dhcp binding