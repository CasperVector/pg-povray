#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { Symcentre }
	object { Mirror }
	object { TwofoldAxis }

	MirrorSet(RotateSet(SimpleCoil, z, 2), z)
	ClockRotate(2)
}

