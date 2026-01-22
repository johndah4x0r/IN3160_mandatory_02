SIM ?= ghdl 
TOPLEVEL_LANG ?= vhdl 
 
# VHDL 2008 
EXTRA_ARGS +=--std=08 
 
# TOPLEVEL is the name of the top level module
# in your VHDL file 
TOPLEVEL ?= decoder
ARCHITECTURE ?= case

# Comment and un-comment as necessary 
VHDL_ENT = $(PWD)/../src/$(TOPLEVEL)_ent.vhd
VHDL_SOURCES += $(VHDL_ENT)
VHDL_SOURCES += $(PWD)/../src/$(TOPLEVEL)_$(ARCHITECTURE).vhd 
 
SIM_ARGS +=--wave=$(TOPLEVEL).ghw 
 
# MODULE is the basename of the Python test file 
MODULE = tb_$(TOPLEVEL)_$(ARCHITECTURE)
 
# include cocotb's make rules to take care of the simulator setup 
include $(shell cocotb-config --makefiles)/Makefile.sim 
 
# removing generated binary of top entity and .o-file on make clean 
clean:: 
	-@rm -f $(TOPLEVEL) 
	-@rm -f e~$(TOPLEVEL).o 
	-@rm -f $(TOPLEVEL).ghw
	-@rm -rf __pycache__/
