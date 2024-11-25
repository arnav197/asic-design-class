###############################################################################
# Created by write_sdc
###############################################################################
current_design vsdbabysoc
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 9.6000 [get_pins {pll/CLK}]
set_clock_transition 0.4800 [get_clocks {clk}]
set_clock_uncertainty -setup 0.4800 clk
set_clock_uncertainty -hold 0.7680 clk
set_propagated_clock [get_clocks {clk}]
###############################################################################
# Environment
###############################################################################
set_input_transition 0.7680 [get_ports {ENb_CP}]
set_input_transition 0.7680 [get_ports {ENb_VCO}]
set_input_transition 0.7680 [get_ports {REF}]
set_input_transition 0.7680 [get_ports {VCO_IN}]
set_input_transition 0.7680 [get_ports {VREFH}]
set_input_transition 0.7680 [get_ports {reset}]
###############################################################################
# Design Rules
###############################################################################
