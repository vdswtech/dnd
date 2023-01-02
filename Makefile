CXXFLAGS=-std=c++17 -O2 -g -Wall -Werror -fPIC -fstack-protector-strong -Wformat-security -D_FORTIFY_SOURCE=2
LDFLAGS=-pie -Wl,-z,relro -Wl,-z,now
TESTFLAGS=-lgtest -lgtest_main -pthread
CXX=g++
 
all: dnd
dnd: main.o character.o attack.o equipment.o features_traits.o money.o skills.o spells.o
	$(CXX) $(LDFLAGS) -o $@ $^ -lsqlite3
main.o: src/main.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $< -lsqlite3
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
character.o: src/character.cpp src/character.h
	$(CXX) $(CXXFLAGS) -c -o $@ $<
spells.o: src/spells.cpp src/spells.h
	$(CXX) $(CXXFLAGS) -c -o $@ $<
test: src/money.cpp src/tests.cpp
	$(CXX) $(CXXFLAGS) -o $@ $^ $(TESTFLAGS)

clean:
	$(RM) dnd test *.o
.PHONY: clean all
