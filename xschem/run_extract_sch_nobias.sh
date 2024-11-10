#! /bin/bash
mkdir -p ../netlist/schematic

xschem -n -s -r -x -q --tcl "set lvs_netlist 1" --rcfile $PDK_ROOT/$PDK/libs.tech/xschem/xschemrc -o ../netlist/schematic -N sky130_cw_ip__bandgap_nobias.spice sky130_cw_ip__bandgap_nobias.sch

echo "Done!"
