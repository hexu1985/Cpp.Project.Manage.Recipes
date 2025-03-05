CXX = g++
CXXFLAGS = -Wall -std=c++11 -I./src
LDFLAGS = 
LDLIBS = -lpthread
VPATH = src:examples
BUILD_DIR = build

SOURCES = $(shell find src/ -name "*.cpp" -printf '%f\n')
HEADERS = $(shell ls src/*.hpp)
OBJECTS = $(patsubst %.cpp,$(BUILD_DIR)/%.o,$(SOURCES))

PROGRAMS_SOURCES = $(shell find examples/ -name "*.cpp"  -printf '%f\n')
PROGRAMS_OBJECTS = $(patsubst %.cpp,$(BUILD_DIR)/%.o,$(PROGRAMS_SOURCES))
PROGRAMS = $(patsubst %.cpp,$(BUILD_DIR)/%,$(PROGRAMS_SOURCES))

.PHONY: all 
all: $(PROGRAMS)

$(PROGRAMS): %: %.o $(OBJECTS)
	$(CXX) $(LDFLAGS) -o $@ $< $(OBJECTS) $(LDLIBS)

$(BUILD_DIR)/%.o: %.cpp $(HEADERS)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(OBJECTS) $(PROGRAMS_OBJECTS) $(PROGRAMS)
	rmdir $(BUILD_DIR)

