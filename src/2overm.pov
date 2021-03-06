#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { Symcentre }
	object { Mirror }
	object { TwofoldAxis }

	MirrorSet(RotateSet(SimpleCoil, z, 2), z)

	// KFF_DIV = 2
	ClockRotate(2)
}

