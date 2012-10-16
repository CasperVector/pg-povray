#include "common.inc"

union {
	object { Floor }
	object { Refaxis }
	object { ThreefoldAxis }

	RotateSet(ThreefoldCoil, z, 3)
	ClockRotate(3)
}

