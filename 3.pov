#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }
	object { ThreefoldAxis }

	RotateSet(HexCoil, z, 3)

	// KFF_DIV = 3
	ClockRotate(3)
}

