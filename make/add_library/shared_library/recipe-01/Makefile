CXX = g++
CXXFLAGS = -fPIC -g3 -Wall -Wextra 
CREATE_SO = g++ -shared

LDFLAGS = -Wl,-rpath,'$$ORIGIN' -Wl,--enable-new-dtags -L.
LDLIBS = -lmessage

PROG_OBJS = hello-world.o 
PROGRAM = hello-world

LIB_HDRS = Message.hpp
LIB_OBJS = Message.o
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
