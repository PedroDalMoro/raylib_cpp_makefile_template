# THE Raylib C++ template

This project has evolved beyond the very simple initial concept it was designed for. However, **if you're looking for the original minimal version**, refer to commit `744a4de837dae6a609631d478a5e1554e823db22`. It remains a great starting point for those who need just a basic setup.

### Current components
* **Raylib v5.0**.
* C++.
* **Makefile** configured for build and unit tests. 
* **Unit tests** implemented using Catch2.
* **Dockerfile** to create the raylib image. If you want to use mine, checkout `pedrodm22/raylib_static_build` on docker hub.
* **GitHub Actions pipeline** for both build and unit tests. The pipeline is setup to trigger when there is a PR to branch `main`.
* Debugging with VSCode integrated features.

### Setup on Windows
The steps to configure everything to get this up and running are:
1. Download and install Raylib from the main website (https://www.raylib.com). For me, the installer was `raylib_installer_v5.0.mingw.64bit.exe` and the `raylib` folder was placed directly on `C:\`.

2. Add the `C:\raylib\w64devkit\bin` folder to the *path* on Windows. This can be done in the `Edit System Environment Variables` panel. With that, you should be able to run `make --version` and `g++ --version` from any terminal and see some information on the screen.
> NOTE: I suggest using the command `which g++` in the terminal to make sure that the executable being called is the one in the Raylib folder. I spent an *enormous amount of time* trying to solve other bugs, and the problem was that Windows was trying to use the `g++.exe` placed in another folder.

3. Clone this repository, and navigate to its folder via terminal (or just open it in VSCode). Then, run `make`. That should build the example code and generate a `game.exe` file, which you can run in the same terminal to open the game window. 

### Build options
The `make` commands that can be used are:

1. `make game`, which builds everything and generates the executable.
1. `make run`, which builds everything and runs the executable.
2. `make clean`, which removes everything from the build process.
3. `make tests`, which builds and runs the unit tests (the `.cpp` files inside the `tests/` folder).

### Debugging
In order to debug the project, enter vscode and simply press `F5`, that should start the debug session using the configurations inside the `tasks.json` and `lauch.json` files. 
> TODO: Currently the vscode debugger doesn't interact well with the game screen, only with the code. Also, for you to be able to use gdb commands in the command line while debugging, it's necessary to prefix them with the `-exec` command, which is very annoying. I hope that the future me is smart enough to fix those issues some day.
