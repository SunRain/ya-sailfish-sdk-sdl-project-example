Yet another sample project for SDL on Sailfish OS
=======================================================

I write this b/c the sample from https://github.com/sailfish-sdk/sdk-sdl-project-example is a little complex and not Qt-Creator friendly for devs

 How To Use:
 --------------------------------------
 
    1. copy all the SDL folder to your project home folder
    2. add this on your project(.pro) file
	linux-g++-32 {
	  LIBS += -L$$PWD/SDL/lib/i486/ -lSDL2
	  # -lSDL2_ttf -lSDL2_mixer -lSDL2_image
	}
	else:linux-g++ {
	  LIBS += -L$$PWD/SDL/lib/armv7hl/ -lSDL2
	  # -lSDL2_ttf -lSDL2_mixer -lSDL2_image
	}
	INCLUDEPATH += $$PWD/SDL/include

    3. add this below "PkgConfigBR:" on your rpm build config fild (.yaml)
	- SDL2
	- SDL2_gfx
	- SDL2_image
	- SDL2_mixer
	- SDL2_net
	- SDL2_sound
	- SDL2_ttf
 