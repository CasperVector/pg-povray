#include "common.inc"

union {
	object { Floor }
	object { Refaxis }
	object { SixfoldAxis }

	RotateSet(ThreefoldCoil, z, 6)
	ClockRotate(6)
}

