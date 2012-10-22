#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { HexMirror }
	object { SixfoldAxis }
	object { ThreefoldAxis }

	RotinvSet(HexCoil, z, 6)
	ClockRotate(3)
}

