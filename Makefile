PNG_ARGS = -D +A +Q9 +W1200 +H1200
GIF_BASE_ARGS = -D +A -J +Q9 +W480 +H480 +KC
CONVERT_ARGS = -loop 0 -delay 10

GET_KFF = $(shell \
	echo '72 / $(shell grep -oP '(?<=ClockRotate\()[12346](?=\))' $(1))' | \
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
	convert $(CONVERT_ARGS) $*-tmp/$*-tmp*.png $*.gif
	rm -rf $*-tmp/

clean:
	rm -rf *.pov-state *-tmp/

distclean: clean
	rm -f *.png *.gif

