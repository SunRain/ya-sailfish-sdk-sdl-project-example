# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = sdl_test

CONFIG += sailfishapp

SOURCES += src/sdltest.cpp \
    src/common.cpp
#src/sdl_test.cpp \

OTHER_FILES += qml/sdl_test.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    rpm/sdl_test.changes.in \
    rpm/sdl_test.spec \
    rpm/sdl_test.yaml \
    translations/*.ts \
    sdl_test.desktop

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n
TRANSLATIONS += translations/sdl_test-de.ts


# Reading the proper libraries locally is the only way
# I could get compilation to work.
linux-g++-32 {
LIBS += -L$$PWD/SDL/lib/i486/ -lSDL2
# -lSDL2_ttf -lSDL2_mixer -lSDL2_image
}
else:linux-g++ {
LIBS += -L$$PWD/SDL/lib/armv7hl/ -lSDL2
# -lSDL2_ttf -lSDL2_mixer -lSDL2_image
}

INCLUDEPATH += $$PWD/SDL/include

HEADERS += \
    src/common.h
