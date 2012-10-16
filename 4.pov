#include "common.inc"

union {
	object { Floor }
	object { Refaxis }
	object { FourfoldAxis }

	RotateSet(FourfoldCoil, z, 4)
	ClockRotate(4)
}

