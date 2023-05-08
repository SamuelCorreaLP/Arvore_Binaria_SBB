CXX=g++
CXXFLAGS=-g -ggdb -O2 -Wall

TARGET=main
OBJS=main.o \
	arvoreSBB.o \
	item.o 

all: $(TARGET)

clean:
	rm -rf $(TARGET) $(OBJS)

install:
	cp $(TARGET) /usr/local/bin

main.o: arvoreSBB.h item.h
arvoreSBB.o: arvoreSBB.h 
item.o: item.h

$(TARGET): $(OBJS)
		   $(CXX) -o $(TARGET) $(OBJS)

.cpp.o:
	$(CXX) $(CXXFLAGS) -c -o $@ $<
