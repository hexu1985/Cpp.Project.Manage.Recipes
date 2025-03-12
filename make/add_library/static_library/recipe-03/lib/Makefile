CXX = g++
CXXFLAGS = -Wall -std=c++11
AR = ar
ARFLAGS = rcs
LIBRARY = libmessage.a

SOURCES = $(shell ls *.cpp)
HEADERS = $(shell ls *.hpp)
OBJECTS = $(patsubst %.cpp,%.o,$(SOURCES))

.PHONY: all 
all: $(LIBRARY)

$(LIBRARY): $(OBJECTS)
	$(AR) $(ARFLAGS) $(LIBRARY) $(OBJECTS)

%.o: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(OBJECTS) $(LIBRARY)

