CXX = g++
CXXFLAGS = -Wall -std=c++11 -I.
VPATH = framework:idcard
PROGRAM = FactoryMethod

SOURCES = $(shell find . -mindepth 2 -name "*.cpp" -printf '%f\n')
HEADERS = $(shell ls */*.hpp)
OBJECTS = $(patsubst %.cpp,%.o,$(SOURCES))

PROGRAM_SOURCES = $(shell ls *.cpp)
PROGRAM_OBJECTS = $(patsubst %.cpp,%.o,$(PROGRAM_SOURCES))

.PHONY: all 
all: $(PROGRAM)

$(PROGRAM): $(OBJECTS) $(PROGRAM_OBJECTS)
	$(CXX) -o $@ $^

%.o: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(OBJECTS) $(PROGRAM_OBJECTS) $(PROGRAM)

