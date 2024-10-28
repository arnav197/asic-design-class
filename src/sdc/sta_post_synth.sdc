set_units -time ns
create_clock [get_pins {pll/CLK}] -name clk -period 9.6
set_clock_uncertainty [expr 0.05 * 9.6] -setup [get_clocks clk]
set_clock_uncertainty [expr 0.08 * 9.6] -hold [get_clocks clk]
set_clock_transition [expr 0.05 * 9.6] [get_clocks clk]
set_input_transition [expr 0.08 * 9.6] [all_inputs]