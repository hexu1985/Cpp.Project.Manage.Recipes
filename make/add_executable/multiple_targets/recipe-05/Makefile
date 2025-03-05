CXX = g++
CXXFLAGS = -Wall -std=c++11 -I./src
LDFLAGS = 
LDLIBS = -lpthread

SOURCES = $(shell ls src/*.cpp)
HEADERS = $(shell ls src/*.hpp)
OBJECTS = $(patsubst %.cpp,%.o,$(SOURCES))

PROGRAMS_SOURCES = $(shell ls examples/*.cpp)
PROGRAMS_OBJECTS = $(patsubst %.cpp,%.o,$(PROGRAMS_SOURCES))
PROGRAMS = $(patsubst %.cpp,%,$(PROGRAMS_SOURCES))

.PHONY: all 
all: $(PROGRAMS)

$(PROGRAMS): %: %.o $(OBJECTS)
	$(CXX) $(LDFLAGS) -o $@ $^ $(LDLIBS)

%.o: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(OBJECTS) $(PROGRAMS_OBJECTS) $(PROGRAMS)

