#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { ThreefoldAxis }
	RotateSet(XYTwofoldAxis2, z, 3)

	RotateSet(RotateSet(ThreefoldCoil, x, 2), z, 3)
	ClockRotate(3)
}

