* Command file for design: opamp
* Top Spice file: ..\..\genhdl\opamp\opamp.cir
.op
.tran 0 5m 0
* .ac dec 100  
.plot tran SG(avdd#defhook#0) V(avdd) V(avss) V(n1n4) V(vcm) V(vin) V(vout)
* .plot ac V(avdd) V(avss) V(n1n4) V(vcm) V(vin) V(vout)
.option eps=1.0e-7
.option hmin=1.0e-12
.option print_dc=2
* save tr toplevel
* save ac toplevel
* save ba

.save file=opamp.iic end no_save_wdb
* .plot dc V(avdd) V(avss) V(n1n4) V(vcm) V(vin) V(vout)
.include ..\..\genhdl\opamp\opamp.cir
