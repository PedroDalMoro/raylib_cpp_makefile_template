# setup
TARGET = game.exe
SOURCE_FOLDER = source
BUILD_FOLDER = build
INCLUDE_FOLDER = include

# this wildcard avoids some errors due to files not found or something like that
SOURCES = $(wildcard $(SOURCE_FOLDER)/*.cpp)

# creates the list of obj files inside the build folder, based on the source files present 
OBJS = $(patsubst $(SOURCE_FOLDER)/%.cpp, $(BUILD_FOLDER)/%.o, $(SOURCES))

# compiler flags
CXX = g++
DEBUG_FLAGS = -O0 -g
CXXFLAGS = -Wall -Wextra

# raylib things
LIBS = -lraylib -lgdi32 -lwinmm

# creating the executable from the object files. the dependencies here are the object files, 
# and the existence of a build/ folder. 
game: $(BUILD_FOLDER) $(OBJS)
	g++ $(OBJS) -o $(TARGET) $(LIBS)

# creating every object file, from a general make rule.
# $< means the current target, and $@ means the current dependency.
$(BUILD_FOLDER)/%.o: $(SOURCE_FOLDER)/%.cpp
	$(CXX) $(DEBUG_FLAGS) $(CXXFLAGS) -c $< -o $@ -I$(INCLUDE_FOLDER) $(LIBS)

# creates the build/ folder, if it doesn't exists already.
$(BUILD_FOLDER):
	mkdir -p $(BUILD_FOLDER)

# clean everything from the build
clean:
	rm -rf $(TARGET) $(BUILD_FOLDER)