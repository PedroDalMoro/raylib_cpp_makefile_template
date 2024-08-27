# Raylib - C++ - Makefile
Raylib Cpp template, using a simple makefile to build, and vscode to debug. 

### Components
* Raylib v5.0.
* C++.
* Build using a very simple makefile. 
* Debugging with vscode integrated stuff.

### Setup
The steps to configure everything come mainly from [this raylib guide](github.com/raysan5/raylib/wiki/Working-on-Windows), plus some additional things to setup the build via makefile and debug via vscode.

1. Download `w64devkit-x.xx.x.zip` from https://github.com/skeeto/w64devkit/releases and unzip it to `C:\Program Files\w64devkit`.

2. Download `raylib-5.0_win64_mingw-w64.zip` from https://github.com/raysan5/raylib/releases. Unzip `include` and `lib ` to `C:\Program Files\w64devkit\x86_64-w64-mingw32`.

3. Add the `C:\Program Files\w64devkit\bin` folder to the *path* on windows. This can be done in the `edit system environment variables` panel. With that, you should be able to run `make --version` and `g++ --version` from any terminal and see some information on the screen. 

4. From the command line, navigate to `raylib/src/` folder and run the command `make PLATFORM=PLATFORM_DESKTOP`.

5. Clone this repository, and navigate to this folder via terminal. Then, run `make`. That should build the example code and generate a `main.exe` file, that you can run in the same terminal and open the game window. 

### Build options
The `make` commands that can be used are:

1. `make`, which builds everything and generates the executable. 
2. `make clean`, which removes the previously created executable. 

### Debugging
In order to debug the project, enter vscode and simply press `F5`, that should start the debug session using the configurations inside the `tasks.json` and `lauch.json` files. 