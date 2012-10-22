#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { ThreefoldAxis }
	RotateSet(XYTwofoldAxis2, z, 3)

	RotateSet(RotateSet(HexCoil, x, 2), z, 3)
	ClockRotate(3)
}

