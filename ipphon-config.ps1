config t   
no telephony-service
telephony-service
   no auto assign
   no auto-reg-ephone
   max-ephones 5
   max-dn 20
   ip source-address 10.12.100.8 port 2000
   create cnf-files
ephone-dn 1
  number 1211
ephone-dn 2
  number 1222
ephone-dn 3
  number 1233
ephone-dn 4
  number 1244
ephone-dn 5
  number 1255
ephone-dn 6
  number 1266
ephone-dn 7
  number 1277
ephone-dn 8
  number 1288
 ephone-dn 9
   number 1299
ephone-dn 10
 number 1298
Ephone 1
  Mac-address ccd8.c1fb.161b
  type 8945
  button 1:8 2:7 3:6 4:5
  restart
Ephone 2
  Mac-address ccd8.c1fb.0817
  type 8945
  button 1:4 2:3 3:2 4:1
  restart  
end
