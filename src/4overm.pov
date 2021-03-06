#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { Symcentre }
	object { Mirror }
	object { FourfoldAxis }

	MirrorSet(RotateSet(TetraCoil, z, 4), z)

	// KFF_DIV = 4
	ClockRotate(4)
}

