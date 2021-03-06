#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { FourfoldAxis }
	object { TwofoldAxis }

	RotinvSet(TetraCoil, z, 4)

	// KFF_DIV = 2
	ClockRotate(2)
}

