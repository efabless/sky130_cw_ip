# Tcl script to run LVS

if {[catch {set PDK_ROOT $::env(PDK_ROOT)}]} {set PDK_ROOT /usr/local/share/pdk}
if {[catch {set PDK $::env(PDK)}]} {set PDK sky130A}

set pdklib ${PDK_ROOT}/${PDK}
set techlibs ${pdklib}/libs.tech
set reflibs ${pdklib}/libs.ref
set CACE_ROOT $::env(CACE_ROOT)

set setupfile ${techlibs}/netgen/sky130A_setup.tcl
set hvlib ${reflibs}/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice

set circuit1 [readnet spice $CACE_ROOT/netlist/layout/sky130_cw_ip__bandgap.spice]
set circuit2 [readnet spice $hvlib]
readnet spice $CACE_ROOT/netlist/schematic/sky130_cw_ip__bandgap.spice $circuit2

lvs "$circuit1 sky130_cw_ip__bandgap" "$circuit2 sky130_cw_ip__bandgap" \
        $setupfile sky130_cw_ip__bandgap_comp.out -json
                                                    
