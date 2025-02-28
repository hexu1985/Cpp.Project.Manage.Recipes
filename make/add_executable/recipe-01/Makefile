CXX = g++
CXXFLAGS = -Wall -std=c++11
PROGRAM = hello_world

SRCS = main.cpp
OBJS = $(SRCS:.cpp=.o)

.PHONY: all 
all: $(PROGRAM)

$(PROGRAM): $(OBJS)
	$(CXX) -o $(PROGRAM) $(OBJS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(OBJS) $(PROGRAM)

