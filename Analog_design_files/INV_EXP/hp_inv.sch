v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 260 -330 {}
N 180 -240 230 -240 {lab=D_INPUT}
N 180 -240 180 -210 {lab=D_INPUT}
N 180 -210 180 -200 {lab=D_INPUT}
N 180 -200 180 -190 {lab=D_INPUT}
N 180 -190 180 -180 {lab=D_INPUT}
N 180 -180 230 -180 {lab=D_INPUT}
N 290 -240 340 -240 {lab=#net1}
N 340 -240 340 -230 {lab=#net1}
N 290 -180 340 -180 {lab=#net1}
N 340 -230 340 -180 {lab=#net1}
N 140 -210 180 -210 {lab=D_INPUT}
N 340 -210 390 -210 {lab=#net1}
N 260 -310 260 -280 {lab=CLOCK_BAR}
N 260 -140 260 -110 {lab=CLOCK}
N 510 -90 560 -90 {lab=#net1}
N 510 -90 510 -60 {lab=#net1}
N 510 -60 510 -50 {lab=#net1}
N 510 -50 510 -40 {lab=#net1}
N 510 -40 510 -30 {lab=#net1}
N 510 -30 560 -30 {lab=#net1}
N 620 -90 670 -90 {lab=#net2}
N 670 -90 670 -80 {lab=#net2}
N 620 -30 670 -30 {lab=#net2}
N 670 -80 670 -30 {lab=#net2}
N 670 -60 720 -60 {lab=#net2}
N 590 10 590 40 {lab=CLOCK}
N 390 -210 390 -160 {lab=#net1}
N 390 -60 510 -60 {lab=#net1}
N 390 -160 390 -60 {lab=#net1}
N 260 40 590 40 {lab=CLOCK}
N 260 -110 260 40 {lab=CLOCK}
N 130 40 260 40 {lab=CLOCK}
N 590 -160 590 -130 {lab=CLOCK_BAR}
N 390 -210 650 -210 {lab=#net1}
N 730 -210 860 -210 {lab=Q_OUT}
N 860 -210 860 -60 {lab=Q_OUT}
N 800 -60 860 -60 {lab=Q_OUT}
N 860 -210 920 -210 {lab=Q_OUT}
N 860 -60 940 -60 {lab=Q_OUT}
N 1020 -60 1110 -60 {lab=Q_OUT_BAR}
N -200 -210 -120 -210 {lab=GND}
N -120 -210 -120 -50 {lab=GND}
N -120 -50 -120 160 {lab=GND}
N -200 100 -120 100 {lab=GND}
N -200 -50 -120 -50 {lab=GND}
C {pmos3.sym} 260 -260 1 0 {name=X1 model=irf5305}
C {nmos3.sym} 260 -160 3 0 {name=X2 model=irf540 m=1}
C {pmos3.sym} 590 -110 1 0 {name=X3 model=irf5305}
C {nmos3.sym} 590 -10 3 0 {name=X4 model=irf540 m=1}
C {cmos_inv.sym} 690 -210 0 0 {name=X5 WN=15u WP=45u LLN=3u LLP=3u m=1}
C {cmos_inv.sym} 760 -60 2 0 {name=X6 WN=15u WP=45u LLN=3u LLP=3u m=1}
C {lab_pin.sym} 140 -210 0 0 {name=p1 sig_type=std_logic lab=D_INPUT
}
C {lab_pin.sym} 130 40 0 0 {name=p2 sig_type=std_logic lab=CLOCK}
C {lab_pin.sym} 260 -310 1 0 {name=p3 sig_type=std_logic lab=CLOCK_BAR
}
C {lab_pin.sym} 590 -160 0 0 {name=p4 sig_type=std_logic lab=CLOCK_BAR}
C {lab_pin.sym} 920 -210 2 0 {name=p5 sig_type=std_logic lab=Q_OUT}
C {cmos_inv.sym} 980 -60 0 0 {name=X7 WN=15u WP=45u LLN=3u LLP=3u m=1}
C {lab_pin.sym} 1110 -60 2 0 {name=p6 sig_type=std_logic lab= Q_OUT_BAR}
C {vsource.sym} -200 -80 0 0 {name=V2 value=3 savecurrent=false}
C {vsource.sym} -200 70 0 0 {name=V3 value=3 savecurrent=false}
C {gnd.sym} -120 160 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -200 -270 0 0 {name=p7 sig_type=std_logic lab=D_INPUT}
C {lab_pin.sym} -200 -110 0 0 {name=p8 sig_type=std_logic lab=CLOCK
}
C {lab_pin.sym} -200 40 0 0 {name=p9 sig_type=std_logic lab=CLOCK_BAR}
C {vsource.sym} -200 -240 0 0 {name=V1 value=3 savecurrent=false}
