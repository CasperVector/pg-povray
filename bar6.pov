#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { HexMirror }
	object { SixfoldAxis }
	object { ThreefoldAxis }

	RotinvSet(HexCoil, z, 6)

	// KFF_DIV = 3
	ClockRotate(3)
}

