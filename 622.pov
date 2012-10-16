#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { SixfoldAxis }
	AltRotateSet2(XYTwofoldAxis, XTwofoldAxis, z, 6)

	RotateSet(RotateSet(ThreefoldCoil, x, 2), z, 6)
	ClockRotate(6)
}

