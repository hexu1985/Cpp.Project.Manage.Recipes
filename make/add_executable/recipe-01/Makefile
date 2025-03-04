CXX = g++
CXXFLAGS = -Wall -std=c++11
PROGRAM = hello_world

SOURCES = main.cpp
OBJECTS = $(patsubst %.cpp,%.o,$(SOURCES))

.PHONY: all 
all: $(PROGRAM)

$(PROGRAM): $(OBJECTS)
	$(CXX) -o $(PROGRAM) $(OBJECTS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(OBJECTS) $(PROGRAM)

