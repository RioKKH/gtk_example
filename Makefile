CPP = g++
CPP_OPTIONS = -Wall
#CPP_OPTIONS = -Wall --pedantic-error -D_DEBUG

APPS = gtktest gtkVersionCheck gtkQuitButton gtkWindow

all: ${APPS}
build: ${APPS}

gtkVersionCheck: gtkVersionCheck.cpp
	$(CPP) $(CPP_OPTIONS) $^ -o $@ `pkg-config --cflags --libs gtk+-2.0`

gtktest: gtktest.cpp
	$(CPP) $(CPP_OPTIONS) $^ -o $@ `pkg-config --cflags --libs gtk+-2.0`

gtkQuitButton: gtkQuitButton.cpp
	$(CPP) $(CPP_OPTIONS) $^ -o $@ `pkg-config --cflags --libs gtk+-2.0`

gtkwindow: gtkwindow.cpp
	$(CPP) $(CPP_OPTIONS) $^ -o $@ `pkg-config --cflags --libs gtkmm-2.0`

clean:
	rm -f ${APPS}
	rm -f *.o

