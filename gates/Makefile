# Makefile for AND gate simulation

# Verilog files
VERILOG_FILES = AND_gate.v AND_gate_tb.v

# Simulation executable
SIM_EXEC = AND

# Compile and run simulation
all: $(SIM_EXEC)
	./$(SIM_EXEC)

# Compile Verilog files
$(SIM_EXEC): $(VERILOG_FILES)
	iverilog -o $(SIM_EXEC) $(VERILOG_FILES)

# Remove compiled files
clean:
	rm -f $(SIM_EXEC) *~ *.vcd

