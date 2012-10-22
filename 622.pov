#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { SixfoldAxis }
	AltRotateSet2(XYTwofoldAxis, XTwofoldAxis, z, 6)

	RotateSet(RotateSet(HexCoil, x, 2), z, 6)

	// KFF_DIV = 6
	ClockRotate(6)
}

