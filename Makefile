CXX = g++
CXXFLAGS = -I headers
TARGET = pet_shelter
SOURCES = src/main.cpp src/employee.cpp src/pet.cpp src/shelter.cpp

all:
	$(CXX) $(CXXFLAGS) $(SOURCES) -o $(TARGET)
# cleans up
clean:
	del $(TARGET).exe 2>nul || true

test: $(TARGET)
	./$(TARGET)
 # uses second game data file
game2: $(TARGET)
	./$(TARGET) game_data2.txt

 # uses third game data file
game3: $(TARGET)
	./$(TARGET) game_data3.txt

.PHONY: all clean test game2 game3
