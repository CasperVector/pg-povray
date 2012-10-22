#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { FourfoldAxis }
	AltRotateSet2(XYTwofoldAxis, XTwofoldAxis, z, 4)

	RotateSet(RotateSet(TetraCoil, x, 2), z, 4)

	// KFF_DIV = 4
	ClockRotate(4)
}

