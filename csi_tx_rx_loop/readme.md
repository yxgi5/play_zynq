# tested on AXU2CGB

csi_loop: tpg -> csi-tx(axis) ---> csi-rx(axis) -> hdmi-tx

csi_tx_native_axis_loop: colorbar(native) -> video2axis -> csi-tx(axis) ---> csi-rx(axis) -> hdmi-tx

csi_tx_native_if_loop: tpg -> axis2video -> csi-tx(native) ---> csi-rx(axis) -> hdmi-tx