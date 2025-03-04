GFLAGS_DIR=$(HOME)/local/gflags

CXX = g++
CXXFLAGS = -Wall -std=c++11 -I$(GFLAGS_DIR)/include
LDFLAGS = -Wl,-rpath,$(GFLAGS_DIR)/lib -Wl,--enable-new-dtags -L$(GFLAGS_DIR)/lib
LDLIBS = -lgflags -lpthread
PROGRAM = gflags_demo

SRCS = main.cpp
OBJS = $(patsubst %.cpp,%.o,$(SRCS))

.PHONY: all 
all: $(PROGRAM)

$(PROGRAM): $(OBJS)
	$(CXX) $(LDFLAGS) -o $(PROGRAM) $(OBJS) $(LDLIBS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(OBJS) $(PROGRAM)

