SOURCES8=$(wildcard src/*.s)
OBJECTS8=$(SOURCES8:.s=.o)



#SOURCES16=$(wildcard src/65c816/*.s)
#OBJECTS16=$(SOURCES16:.s=.o)


all: init $(SOURCES8) $(OBJECTS8) build

init:
	@mkdir target/2021.2/lib8/ -p
	@mkdir target/2021.2/include/ -p
	@mkdir target/2021.2/arch/include/ -p

$(OBJECTS8): $(SOURCES8)

	@ca65 -ttelestrat $(@:.o=.s) -o $@ --include-dir src/include
	@ar65 r ch376.lib  $@


build:
	cp ch376.lib target/2021.2/lib8/
	cp src/include/ch376.h target/2021.2/include
	cp src/include/ch376.inc target/2021.2/arch/include


clean:
	rm src/*.o
	rm ch376.lib


