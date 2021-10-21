CXX = g++
CXXFLAGS = -g -Wall -Wextra

M_BIN = main
M_CPP = main.cpp
M_OBJ = main.o
C_CPP = calculator.cpp
C_H	= calculator.h
C_A	= calculator.a
C_OBJ = calculator.o

all: $(M_BIN)

$(M_BIN): $(M_OBJ) $(C_A)
	$(CXX) $(CXXFLAGS) $(M_OBJ) -o $(M_BIN) -L. -l:$(C_A)

$(M_OBJ): $(M_CPP)
	$(CXX) $(CXXFLAGS) -c $<

$(C_A): $(C_OBJ)
	$(AR) $(ARFLAGS) $@ $^

$(C_OBJ): $(C_CPP) $(C_H)
	$(CXX) $(CXXFLAGS) -c $<

clean: 
	rm -rf $(M_BIN) $(M_OBJ) $(C_A) $(C_OBJ)
