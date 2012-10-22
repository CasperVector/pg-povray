#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }
	object { SixfoldAxis }

	RotateSet(HexCoil, z, 6)

	// KFF_DIV = 6
	ClockRotate(6)
}

