CXXFLAGS=-std=c++17 -O2 -g -Wall -Werror -fPIC -fstack-protector-strong -Wformat-security -D_FORTIFY_SOURCE=2
LDFLAGS=-pie -Wl,-z,relro -Wl,-z,now
CXX=g++
 
all: dnd
	 
dnd: main.o attack.o equipment.o features_traits.o money.o skills.o
	$(CXX) $(LDFLAGS) -o $@ $^
main.o: src/main.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<
attack.o: src/attack.cpp src/attack.h
	$(CXX) $(CXXFLAGS) -c -o $@ $<
equipment.o: src/equipment.cpp src/equipment.h
	$(CXX) $(CXXFLAGS) -c -o $@ $<
features_traits.o: src/features_traits.cpp src/features_traits.h
	$(CXX) $(CXXFLAGS) -c -o $@ $<
money.o: src/money.cpp src/money.h
	$(CXX) $(CXXFLAGS) -c -o $@ $<
skills.o: src/skills.cpp src/skills.h
	$(CXX) $(CXXFLAGS) -c -o $@ $<

clean:
	$(RM) dnd *.o
.PHONY: clean all
