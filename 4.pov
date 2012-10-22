#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }
	object { FourfoldAxis }

	RotateSet(TetraCoil, z, 4)

	// KFF_DIV = 4
	ClockRotate(4)
}

