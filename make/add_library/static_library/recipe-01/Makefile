CXX = g++
CXXFLAGS = -g3 -Wall -Wextra
AR = ar
ARFLAGS = rcs

PROG_OBJS = hello-world.o 
PROGRAM = hello-world

LIB_HDRS = Message.hpp
LIB_OBJS = Message.o
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
	$(RM) $(PROGRAM) $(LIBRARY) a.out core *.o
