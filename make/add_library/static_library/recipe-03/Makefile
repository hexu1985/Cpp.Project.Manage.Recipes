CXX = g++
CXXFLAGS = -g3 -Wall -Wextra -Ilib

PROG_OBJS = hello-world.o 
PROGRAM = hello-world

LIB_HDRS = $(shell ls lib/*.hpp)
LIBRARY = lib/libmessage.a

.PHONY: all
all: $(PROGRAM)

$(PROGRAM): $(PROG_OBJS) $(LIBRARY)
	$(CXX) -o $@ $(PROG_OBJS) $(LIBRARY)

$(LIBRARY): T := all
$(LIBRARY): libs_everything

libs_everything:
	$(MAKE) $(T) --directory=lib

%.o: %.cpp $(LIB_HDRS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY:
clean: T := clean
clean: libs_everything
	$(RM) $(PROGRAM) $(PROG_OBJS) 
