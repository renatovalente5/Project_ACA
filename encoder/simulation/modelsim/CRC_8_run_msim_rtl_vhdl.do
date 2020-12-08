transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/andralves/Documents/ACA/Projeto/projeto_git/encoder/gateXOR2.vhd}
vcom -93 -work work {/home/andralves/Documents/ACA/Projeto/projeto_git/encoder/gateXOR3.vhd}
vcom -93 -work work {/home/andralves/Documents/ACA/Projeto/projeto_git/encoder/gateXOR4.vhd}
vcom -93 -work work {/home/andralves/Documents/ACA/Projeto/projeto_git/encoder/encoder_CRC_8_v3.vhd}

