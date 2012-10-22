#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { TwofoldAxis }
	RotateSet2(XMirror, z, 2)

	RotateSet(MirrorSet(TetraCoil, x), z, 2)

	// KFF_DIV = 2
	ClockRotate(2)
}

