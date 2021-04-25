################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name aclk_axis -period 7.500 [get_ports aclk_axis]
create_clock -name aclk_ctrl -period 7.500 [get_ports aclk_ctrl]

################################################################################