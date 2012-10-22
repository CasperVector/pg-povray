#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { SixfoldAxis }
	RotateSet2(XMirror, z, 6)

	RotateSet(MirrorSet(HexCoil, x), z, 6)

	// KFF_DIV = 6
	ClockRotate(6)
}

