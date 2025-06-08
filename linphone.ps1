conf t
 voice service voip
  allow-connections h323 to sip    
  allow-connections sip to h323
  allow-connections sip to sip
  supplementary-service h450.12
 sip
   bind control source-interface fa0/0
   bind media source-interface fa0/0
   registrar server expires max 600 min 60
!
 voice register global
  mode cme
  source-address 10.12.100.8 port 5060
  max-dn 12
  max-pool 12
  authenticate register
  create profile sync
 voice register dn 1
   number 1228
   allow watch
   name 1228
 voice register dn 2
   number 1227
   allow watch
   name 1227
!
  voice register pool 1
    id mac 066a.76c2.247f
    number 1 dn 1
    dtmf-relay sip-notify
    username 1228 password 1228
    codec g711ulaw
!
  voice register pool 2
    id mac __.__.__
    number 1 dn 2
    dtmf-relay sip-notify
    username 1227 password 1227
    codec g711ulaw
!
*******call other countries!!!********
config t
!
dial-peer voice _ voip
destination-pattern k..
session protocol sipv2
session target sip-server
codec g711ulaw
exit
          
sip-ua
sip-server ipv4:192.168.k.1
