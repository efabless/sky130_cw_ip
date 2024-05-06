v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Standalone bandgap circuit with self-bias} -200 -140 0 0 0.4 0.4 {}
N -20 60 70 60 {
lab=#net1}
N -180 -40 -180 20 {
lab=vdd}
N -180 -40 70 -40 {
lab=vdd}
N 70 -40 70 10 {
lab=vdd}
N -180 80 -180 110 {
lab=vss}
N -180 110 70 110 {
lab=vss}
N 70 100 70 110 {
lab=vss}
N 220 30 300 30 {
lab=xxx}
N 40 40 70 40 {
lab=trim[15:0]
bus=true}
N 40 -20 40 40 {
lab=trim[15:0]
bus=true}
N 10 -20 40 -20 {
lab=trim[15:0]
bus=true}
N -200 -40 -180 -40 {
lab=vdd}
N -200 110 -180 110 {
lab=vss}
N -200 140 -150 140 {
lab=vsub}
C {bandgap/bandgap.sym} 90 110 0 0 {name=x1}
C {bias/bias_basis_current.sym} -160 90 0 0 {name=x2}
C {devices/iopin.sym} -200 140 0 1 {name=p1 lab=vsub}
C {devices/iopin.sym} -200 110 0 1 {name=p2 lab=vss}
C {devices/iopin.sym} -200 -40 0 1 {name=p3 lab=vdd}
C {devices/opin.sym} 300 30 0 0 {name=p4 lab=vbg}
C {devices/ipin.sym} 10 -20 0 0 {name=p5 lab=trim[15:0]}
C {devices/noconn.sym} -20 30 0 1 {name=l1}
C {devices/lab_pin.sym} -150 140 0 1 {name=p6 sig_type=std_logic lab=vsub}
