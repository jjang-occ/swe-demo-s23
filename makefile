#Chris Manlove May 2023
EXE = main
CXX = @g++
CXXFLAGS = -Wall -g -std=c++20 -O2

$(EXE): $(OBJ) makefile
	@rm -f $(EXE)
	$(CXX) *.cpp $(CXXFLAGS) $(LINKERFLAGS) -o $(EXE)

clean:
	@rm -f $(EXE)

run: $(EXE)
	@./$(EXE)
