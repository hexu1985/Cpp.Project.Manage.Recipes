CXX = g++
CXXFLAGS = -fPIC -g3 -Wall -Wextra -Ilib
CREATE_SO = g++ -shared

LDFLAGS = -Wl,-rpath,'$$ORIGIN' -Wl,--enable-new-dtags -L.
LDLIBS = -lmessage

PROG_OBJS = hello-world.o 
PROGRAM = hello-world

LIB_HDRS = $(shell ls lib/*.hpp)
LIB_SRCS = $(shell ls lib/*.cpp)
LIB_OBJS = $(patsubst %.cpp,%.o,$(LIB_SRCS))
LIBRARY = libmessage.so

.PHONY: all
all: $(PROGRAM)

$(PROGRAM): $(PROG_OBJS) $(LIBRARY)
	$(CXX) $(LDFLAGS) -o $(PROGRAM) $(PROG_OBJS) $(LDLIBS)

$(LIBRARY): $(LIB_OBJS)
	$(CREATE_SO) -o $@ $^

%.o: %.cpp $(LIB_HDRS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY:
clean:
	$(RM) $(PROGRAM) $(LIBRARY) $(PROG_OBJS) $(LIB_OBJS)
