GTEST_DIR = $(HOME)/local/googletest

CXX = g++
CXXFLAGS = -Wall -std=c++17 -I$(GTEST_DIR)/include
LDFLAGS = -Wl,-rpath,$(GTEST_DIR)/lib -Wl,--enable-new-dtags -L$(GTEST_DIR)/lib
LDLIBS = -lgtest -lpthread
PROGRAM = gtest_demo

SOURCES = $(shell ls *.cpp)
HEADERS = $(shell ls *.h)
OBJECTS = $(patsubst %.cpp,%.o,$(SOURCES))

.PHONY: all 
all: $(PROGRAM)

$(PROGRAM): $(OBJECTS)
	$(CXX) $(LDFLAGS) -o $(PROGRAM) $(OBJECTS) $(LDLIBS)

%.o: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(OBJECTS) $(PROGRAM)

