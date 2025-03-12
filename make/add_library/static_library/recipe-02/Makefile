CXX = g++
CXXFLAGS = -g3 -Wall -Wextra -Ilib
AR = ar
ARFLAGS = rcs

PROG_OBJS = hello-world.o 
PROGRAM = hello-world

LIB_HDRS = $(shell ls lib/*.hpp)
LIB_SRCS = $(shell ls lib/*.cpp)
LIB_OBJS = $(patsubst %.cpp,%.o,$(LIB_SRCS))
LIBRARY = libmessage.a

.PHONY: all
all: $(PROGRAM)

$(PROGRAM): $(PROG_OBJS) $(LIBRARY)
	$(CXX) -o $@ $^

$(LIBRARY): $(LIB_OBJS)
	$(AR) $(ARFLAGS) $@ $^

%.o: %.cpp $(LIB_HDRS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY:
clean:
	$(RM) $(PROGRAM) $(LIBRARY) $(PROG_OBJS) $(LIB_OBJS)
