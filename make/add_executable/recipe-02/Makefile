GFLAGS_DIR=$(HOME)/local/gflags

CXX = g++
CXXFLAGS = -Wall -std=c++11 -I$(GFLAGS_DIR)/include
LDFLAGS = -Wl,-rpath,$(GFLAGS_DIR)/lib -Wl,--enable-new-dtags -L$(GFLAGS_DIR)/lib
LDLIBS = -lgflags -lpthread
PROGRAM = gflags_demo

SOURCES = main.cpp
OBJECTS = $(patsubst %.cpp,%.o,$(SOURCES))

.PHONY: all 
all: $(PROGRAM)

$(PROGRAM): $(OBJECTS)
	$(CXX) $(LDFLAGS) -o $(PROGRAM) $(OBJECTS) $(LDLIBS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(OBJECTS) $(PROGRAM)

