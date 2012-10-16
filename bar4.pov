#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { FourfoldAxis }
	object { TwofoldAxis }

	RotinvSet(FourfoldCoil, z, 4)
	ClockRotate(2)
}

