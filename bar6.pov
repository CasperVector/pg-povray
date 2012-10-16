#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { HexMirror }
	object { SixfoldAxis }
	object { ThreefoldAxis }

	RotinvSet(ThreefoldCoil, z, 6)
	ClockRotate(3)
}

