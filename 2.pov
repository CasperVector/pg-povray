#include "common.inc"

union {
	object { Floor }
	object { Refaxis }
	object { TwofoldAxis }

	RotateSet(TwofoldCoil, z, 2)
	ClockRotate(2)
}

