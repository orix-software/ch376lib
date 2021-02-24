SOURCES8=$(wildcard src/*.s)
OBJECTS8=$(SOURCES8:.s=.o)

PATH_DEST=build/

#SOURCES16=$(wildcard src/65c816/*.s)
#OBJECTS16=$(SOURCES16:.s=.o)

ifeq ($(CC65_HOME),)
        CC = cc65
        AS = ca65
        LD = ld65
        AR = ar65
else
        CC = $(CC65_HOME)/bin/cc65
        AS = $(CC65_HOME)/bin/ca65
        LD = $(CC65_HOME)/bin/ld65
        AR = $(CC65_HOME)/bin/ar65
endif


all: $(SOURCES8) $(OBJECTS8) build


$(OBJECTS8): $(SOURCES8)

	@ca65 -ttelestrat $(@:.o=.s) -o $@ --include-dir src/include
	@ar65 r ch376.lib  $@


build:
	@mkdir target/lib8/ -p
	@mkdir target/usr/include/ -p
	@mkdir target/usr/arch/include/ -p
	cp ch376.lib target/lib8/
	cp src/include/ch376.h target/usr/include
	cp src/include/ch376.inc target/usr/arch/include


clean:
	rm src/*.o
	rm ch376.lib


