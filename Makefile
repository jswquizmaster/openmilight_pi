
CC = g++
CFLAGS = -c -Wall -I.
LIBS = -LRF24/bin/x86_64 -lrf24
SOURCES =  PL1167_nRF24.cpp MiLightRadio.cpp openmilight.cpp
BIN = openmilight

all: $(SOURCES) $(BIN)

$(BIN):	$(SOURCES:.cpp=.o)
	$(CC) $^ -o $@ $(LIBS)

%.o: %.cpp
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f *.o $(BIN)

