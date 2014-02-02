PROJECT = pg-povray
VERSION = 0.1.3

SRC = *.pov common.inc Makefile
DOC = ../README ../COPYING

PNG_RES = 1200
GIF_RES = 480
GIF_KFF_BASE = 72

PNG_ARGS = -D +A +Q9 +W$(PNG_RES) +H$(PNG_RES)
GIF_BASE_ARGS = -D +C +A -J +Q9 +W$(GIF_RES) +H$(GIF_RES) +KC
CONVERT_ARGS = -loop 0 -delay 10

KFF_DIV_REGEX = '(?<=KFF_DIV = )[0-9]+'
GET_KFF = $(shell \
	echo '$(GIF_KFF_BASE) / $(shell grep -oP $(KFF_DIV_REGEX) $1)' | \
	bc)

PG_NAMES = \
	1    2      3     4        6        23     \
	     222    32    422      622      432    \
	bar1 m      bar3  bar4     bar6     mbar3  \
	     2overm       4overm   6overm          \
	     mm2    3m    4mm      6mm      bar43m \
	                  bar42m   bar6m2          \
	     mmm    bar3m 4overmmm 6overmmm mbar3m

all: png gif
png: $(PG_NAMES:%=%.png)
gif: $(PG_NAMES:%=%.gif)
$(PG_NAMES): %: %.png %.gif

%.png: %.pov common.inc
	povray $(PNG_ARGS) +I$< +O$@

%.gif: %.pov common.inc
	mkdir -p $*-tmp/
	povray $(GIF_BASE_ARGS) +KFF$(call GET_KFF,$<) +I$< +O$*-tmp/$*-tmp.png
	convert $(CONVERT_ARGS) $*-tmp/$*-tmp*.png $@
	rm -rf $*-tmp/

dist:
	mkdir -p $(PROJECT)/{src,png,gif}/
	cp $(SRC) $(PROJECT)/src/
	cp *.png $(PROJECT)/png/
	cp *.gif $(PROJECT)/gif/
	cp $(DOC) $(PROJECT)/
	zip -rmT ../$(PROJECT)-$(VERSION).zip $(PROJECT)/

clean:
	rm -rf *.pov-state *-tmp/ pg-povray/

distclean: clean
	rm -f *.png *.gif

