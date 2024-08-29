# Raylib simple C++ makefile template
This is a very simple and easy to understand template for using raylib on Windows. This template uses a simple makefile to build the project in C++, and it's configured to run the vscode debugger out of the box. 

I know that there are thousands of other raylib templates out there, but this only shows how *not so easy* can be to get everything up and running. I hope that this example can help someone to start their development, and especially, to understand what they are doing. 

### Components
* Raylib v5.0.
* C++.
* Build using a very simple makefile. 
* Debugging with vscode integrated stuff.

### Setup
The steps to configure everything to get this up and running are:
1. Donwload and install raylib from the main website (https://www.raylib.com). For me the installer was `raylib_installer_v5.0.mingw.64bit.exe` and the `raylib` folder was placed directly on `C:\`.

2. Add the `C:\raylib\w64devkit\bin` folder to the *path* on windows. This can be done in the `edit system environment variables` panel. With that, you should be able to run `make --version` and `g++ --version` from any terminal and see some information on the screen.
> NOTE: I suggest using the command `which g++` in the terminal to make sure that the executable being called is the one on the raylib folder. I spent an *enourmous ammount of time* trying to solve other bugs, and the problem was that Windows was trying to use the `g++.exe` that was placed on another folder.

3. Clone this repository, and navigate to its folder via terminal (or just open it on vscode terminal). Then, run `make`. That should build the example code and generate a `main.exe` file, that you can run in the same terminal and open the game window. 

### Build options
The `make` commands that can be used are:

1. `make`, which builds everything and generates the executable. 
2. `make clean`, which removes the previously created executable. 

### Debugging
In order to debug the project, enter vscode and simply press `F5`, that should start the debug session using the configurations inside the `tasks.json` and `lauch.json` files. 
> TODO: Currently the vscode debugger doesn't interact well with the game screen, only with the code. Also, for you to be able to use gdb commands in the command line while debugging, it's necessary to prefix them with the `-exec` command, which is very annoying. I hope that the future me is smart enough to fix those issues some day.
