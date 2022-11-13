CXXFLAGS=-O2 -g -Wall -Werror -fPIC -fstack-protector-strong -Wformat-security -D_FORTIFY_SOURCE=2
LDFLAGS=-pie -Wl,-z,relro -Wl,-z,now
CXX=g++
 
all: dnd
	 
dnd: main.o character.o
	$(CXX) $(LDFLAGS) -o $@ $^
main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<
character.o: character.cpp character.h
	$(CXX) $(CXXFLAGS) -c -o $@ $<
		 
clean:
	$(RM) dnd *.o
.PHONY: clean all
