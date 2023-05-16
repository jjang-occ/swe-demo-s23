#Chris Manlove May 2023
EXE = main
CXX = @g++
CXXFLAGS = -Wall -g -std=c++17 -O2 $(INC)
#INC = -I headers 
OBJDIR = obj

#SRC = $(wildcard src/*.cpp)
#OBJ = $(patsubst src/%.cpp,$(OBJDIR)/%.o,$(SRC))

SRC = $(wildcard *.cpp)
OBJ = $(patsubst %.cpp,$(OBJDIR)/%.o,$(SRC))


$(EXE): $(OBJ) makefile
	@rm -f $(EXE)
	$(CXX) $(OBJ) $(LINKERFLAGS) -o $(EXE)

$(OBJDIR)/%.o: src/%.cpp makefile | $(OBJDIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(OBJDIR):
	mkdir -p $(OBJDIR)

clean:
	@rm -f $(OBJ) $(EXE)
	@rm -f -r obj

run: $(EXE)
	@./$(EXE)
